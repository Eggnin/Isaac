import {writeFileSync} from 'node:fs';
const page=encodeURIComponent('头目');
const urls=[`https://isaac.huijiwiki.com/api.php?action=parse&page=${page}&prop=text%7Crevid&format=json`,
  `https://isaac.huijiwiki.com/index.php?title=${page}&action=raw`,
  `https://isaac.huijiwiki.com/wiki/${page}?action=render`];
for(const [index,url] of urls.entries()){
  try{
    const response=await fetch(url,{signal:AbortSignal.timeout(20000)}),body=await response.text();
    const metadata={url,status:response.status,type:response.headers.get('content-type'),bytes:body.length,preview:body.slice(0,130)};
    if(response.ok&&body.length>100){writeFileSync(new URL(`./huiji-boss-source-${index}.txt`,import.meta.url),body);metadata.saved=true;}
    console.log(JSON.stringify(metadata));
  }catch(error){console.log(JSON.stringify({url,error:String(error)}));}
}
