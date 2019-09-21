const path = require('path');
const grpc = require('grpc');
const grpcLoader = require('@grpc/proto-loader');

const echoProtoDef = grpcLoader.loadSync(path.join(__dirname, "../protobuf/echo.proto"));

const port = process.env.SERVICE_PORT || "50051";
const host = process.env.SERVICE_HOST || "127.0.0.1";

const packageObj = grpc.loadPackageDefinition(echoProtoDef);
const EchoService = packageObj.cabane.io.Echo;

const client = new EchoService(`${host}:${port}`,
    grpc.credentials.createInsecure());

const arg = process.argv.find((val) => !Number.isNaN(parseInt(val))) || "3";

client.ask({number: parseInt(arg)}, (error, resp) => {
    if (!error) {
        const {message} = resp;
        if (message === arg) {
            console.log("✔︎");
        } else {
            console.error(`Did not get the right value from echo service: ${message}`);
        }
    } else {
        console.error(error)
    }
})
