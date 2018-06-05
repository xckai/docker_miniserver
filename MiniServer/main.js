var miniserver=require("miniserver-kai")
var server=new miniserver()
var path=require("path")
server.proxyJSONFile("/api",path.resolve(__dirname, './mock'))
if(process.env.PORT){
    server.start(process.env.PORT)
}else{
    server.start()
}
console.log("server start")


