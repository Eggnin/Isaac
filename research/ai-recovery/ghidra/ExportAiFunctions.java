// Local-only batch exporter for the 239 J460 NPC AI dispatch targets.
// Generated C and disassembly remain game-derived local evidence.
// @category Isaac

import ghidra.app.decompiler.DecompInterface;
import ghidra.app.decompiler.DecompileResults;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.listing.FunctionManager;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.Listing;
import ghidra.program.model.symbol.Reference;
import ghidra.program.model.symbol.ReferenceIterator;
import ghidra.program.model.symbol.SourceType;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class ExportAiFunctions extends GhidraScript {
    private static class Seed {
        String va;
        String name;
        String types;
        String identities;
        String evidence;

        Seed(String va, String name, String types, String identities, String evidence) {
            this.va = va;
            this.name = name;
            this.types = types;
            this.identities = identities;
            this.evidence = evidence;
        }
    }

    private static class FunctionExport {
        Seed seed;
        Address entry;
        Function function;
        String cFile;
        String asmFile;
        int instructions;
        int outgoingCalls;
        int incomingCalls;
        String error;
    }

    @Override
    protected void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length != 2) {
            throw new IllegalArgumentException("Expected: <seeds.tsv> <output-directory>");
        }

        File seedsFile = new File(args[0]).getCanonicalFile();
        File outputDirectory = new File(args[1]).getCanonicalFile();
        if (!outputDirectory.isDirectory() && !outputDirectory.mkdirs()) {
            throw new IOException("Could not create " + outputDirectory);
        }

        List<Seed> seeds = readSeeds(seedsFile);
        FunctionManager functions = currentProgram.getFunctionManager();
        Listing listing = currentProgram.getListing();
        List<FunctionExport> exports = new ArrayList<>();

        DecompInterface decompiler = new DecompInterface();
        decompiler.toggleCCode(true);
        decompiler.toggleSyntaxTree(true);
        if (!decompiler.openProgram(currentProgram)) {
            throw new IOException("Decompiler could not open " + currentProgram.getName());
        }

        try {
            int index = 0;
            for (Seed seed : seeds) {
                if (monitor.isCancelled()) break;
                index += 1;
                monitor.setMessage("AI " + index + "/" + seeds.size() + " " + seed.va);
                println("Decompiling " + seed.va + " " + seed.name);

                FunctionExport exported = new FunctionExport();
                exported.seed = seed;
                long value = Long.decode(seed.va);
                Address expectedEntry = currentProgram.getAddressFactory()
                    .getDefaultAddressSpace().getAddress(value);
                Function function = functions.getFunctionAt(expectedEntry);
                if (function == null) function = functions.getFunctionContaining(expectedEntry);
                if (function == null) {
                    disassemble(expectedEntry);
                    function = createFunction(expectedEntry, seed.name);
                }
                if (function == null) {
                    exported.entry = expectedEntry;
                    exported.error = "function-not-created";
                    exports.add(exported);
                    continue;
                }

                exported.function = function;
                exported.entry = function.getEntryPoint();
                if (!function.getEntryPoint().equals(expectedEntry)) {
                    printerr("Seed " + seed.va + " resolved inside function at " + function.getEntryPoint());
                }
                try {
                    function.setName(seed.name, SourceType.USER_DEFINED);
                } catch (Exception exception) {
                    println("Keeping existing name for " + seed.va + ": " + exception.getMessage());
                }
                function.setComment(
                    "J460 NPC AI; dispatcher=0x006c2990; types=" + seed.types +
                    "; identities=" + seed.identities + "; " + seed.evidence
                );

                int instructionCount = 0;
                int outgoingCalls = 0;
                StringBuilder assembly = new StringBuilder();
                assembly.append("; J460 NPC AI ")
                    .append(seed.va).append(" ").append(seed.name).append('\n')
                    .append("; types=").append(seed.types).append('\n')
                    .append("; identities=").append(seed.identities).append('\n')
                    .append("; entry=").append(function.getEntryPoint()).append('\n');

                for (Instruction instruction : listing.getInstructions(function.getBody(), true)) {
                    instructionCount += 1;
                    assembly.append(String.format("%08x  ", instruction.getAddress().getOffset()));
                    assembly.append(padRight(hexBytes(instruction.getBytes()), 24)).append("  ");
                    assembly.append(instruction.toString()).append('\n');
                    for (Reference reference : instruction.getReferencesFrom()) {
                        if (reference.getReferenceType().isCall()) outgoingCalls += 1;
                    }
                }

                int incomingCalls = 0;
                ReferenceIterator references = currentProgram.getReferenceManager()
                    .getReferencesTo(function.getEntryPoint());
                while (references.hasNext()) {
                    Reference reference = references.next();
                    if (reference.getReferenceType().isCall()) incomingCalls += 1;
                }
                exported.instructions = instructionCount;
                exported.outgoingCalls = outgoingCalls;
                exported.incomingCalls = incomingCalls;

                DecompileResults result = decompiler.decompileFunction(function, 180, monitor);
                if (!result.decompileCompleted() || result.getDecompiledFunction() == null) {
                    exported.error = result.getErrorMessage();
                } else {
                    String base = seed.name + "_" + addressHex(function.getEntryPoint());
                    exported.cFile = base + ".c";
                    exported.asmFile = base + ".asm";
                    String header =
                        "/* Local J460 decompiler output.\n" +
                        " * VA: " + seed.va + "\n" +
                        " * Entry: " + function.getEntryPoint() + "\n" +
                        " * Dispatcher: 0x006c2990\n" +
                        " * Types: " + seed.types + "\n" +
                        " * Identities: " + seed.identities + "\n" +
                        " * Evidence: " + seed.evidence + "\n" +
                        " */\n";
                    Files.writeString(
                        new File(outputDirectory, exported.cFile).toPath(),
                        header + result.getDecompiledFunction().getC(),
                        StandardCharsets.UTF_8
                    );
                    Files.writeString(
                        new File(outputDirectory, exported.asmFile).toPath(),
                        assembly.toString(),
                        StandardCharsets.UTF_8
                    );
                }
                exports.add(exported);
            }
        } finally {
            decompiler.dispose();
        }

        writeManifest(new File(outputDirectory, "ai-decompiled.json"), exports);
        long successes = exports.stream().filter(item -> item.cFile != null).count();
        println("Exported " + successes + "/" + exports.size() + " AI functions");
    }

    private List<Seed> readSeeds(File path) throws IOException {
        List<Seed> result = new ArrayList<>();
        try (BufferedReader reader = new BufferedReader(new FileReader(path, StandardCharsets.UTF_8))) {
            String line;
            boolean header = true;
            while ((line = reader.readLine()) != null) {
                if (header) {
                    header = false;
                    continue;
                }
                if (line.isBlank()) continue;
                String[] fields = line.split("\\t", -1);
                if (fields.length != 5) throw new IOException("Invalid seed line: " + line);
                result.add(new Seed(fields[0], fields[1], fields[2], fields[3], fields[4]));
            }
        }
        return result;
    }

    private String addressHex(Address address) {
        return String.format("%08x", address.getOffset());
    }

    private String padRight(String value, int width) {
        if (value.length() >= width) return value;
        StringBuilder result = new StringBuilder(value);
        while (result.length() < width) result.append(' ');
        return result.toString();
    }

    private String hexBytes(byte[] bytes) {
        StringBuilder result = new StringBuilder(bytes.length * 2);
        for (byte value : bytes) {
            result.append(String.format("%02x", value & 0xff));
        }
        return result.toString();
    }

    private String json(String value) {
        if (value == null) return "null";
        StringBuilder result = new StringBuilder("\"");
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            switch (c) {
                case '\\': result.append("\\\\"); break;
                case '"': result.append("\\\""); break;
                case '\n': result.append("\\n"); break;
                case '\r': result.append("\\r"); break;
                case '\t': result.append("\\t"); break;
                default:
                    if (c < 0x20) result.append(String.format("\\u%04x", (int)c));
                    else result.append(c);
            }
        }
        return result.append('"').toString();
    }

    private void writeManifest(File path, List<FunctionExport> exports) throws IOException {
        Map<String, Integer> errorCounts = new LinkedHashMap<>();
        for (FunctionExport item : exports) {
            if (item.error != null) errorCounts.merge(item.error, 1, Integer::sum);
        }

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(path, StandardCharsets.UTF_8))) {
            writer.write("{\n");
            writer.write("  \"format\": \"isaac-j460-ai-ghidra-export-v1\",\n");
            writer.write("  \"program\": " + json(currentProgram.getName()) + ",\n");
            writer.write("  \"language\": " + json(currentProgram.getLanguageID().toString()) + ",\n");
            writer.write("  \"compiler\": " + json(currentProgram.getCompilerSpec().getCompilerSpecID().toString()) + ",\n");
            writer.write("  \"imageBase\": " + json(currentProgram.getImageBase().toString()) + ",\n");
            writer.write("  \"functionCount\": " + exports.size() + ",\n");
            writer.write("  \"decompiledCount\": " +
                exports.stream().filter(item -> item.cFile != null).count() + ",\n");
            writer.write("  \"errorCounts\": {");
            int errorIndex = 0;
            for (Map.Entry<String, Integer> entry : errorCounts.entrySet()) {
                if (errorIndex++ > 0) writer.write(", ");
                writer.write(json(entry.getKey()) + ": " + entry.getValue());
            }
            writer.write("},\n  \"functions\": [\n");

            for (int i = 0; i < exports.size(); i++) {
                FunctionExport item = exports.get(i);
                if (i > 0) writer.write(",\n");
                writer.write("    {");
                writer.write("\"va\": " + json(item.seed.va));
                writer.write(", \"name\": " + json(item.seed.name));
                writer.write(", \"types\": " + json(item.seed.types));
                writer.write(", \"identities\": " + json(item.seed.identities));
                writer.write(", \"entry\": " + json(item.entry == null ? null : item.entry.toString()));
                writer.write(", \"resolvedFunction\": " +
                    json(item.function == null ? null : item.function.getName(true)));
                writer.write(", \"ghidraEntry\": " +
                    json(item.function == null ? null : item.function.getEntryPoint().toString()));
                writer.write(", \"instructions\": " + item.instructions);
                writer.write(", \"incomingCalls\": " + item.incomingCalls);
                writer.write(", \"outgoingCalls\": " + item.outgoingCalls);
                writer.write(", \"cFile\": " + json(item.cFile));
                writer.write(", \"asmFile\": " + json(item.asmFile));
                writer.write(", \"error\": " + json(item.error));
                writer.write("}");
            }
            writer.write("\n  ]\n}\n");
        }
    }
}
