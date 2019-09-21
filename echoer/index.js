const path = require('path');
const grpc = require('grpc');
const grpcLoader = require('@grpc/proto-loader');

const echoProto = grpcLoader.loadSync(path.join(__dirname, "../protobuf/echo.proto"));

const port = process.env.SERVICE_PORT || "50051";
const host = process.env.SERVICE_HOST || "127.0.0.1";

const server = new grpc.Server();

server.addService(echoProto['cabane.io.Echo'], {
    ask: (call, callback) => {
        let {number} = call.request;
        callback(null, {message: number.toString()});
    }
});

server.bind(`${host}:${port}`, grpc.ServerCredentials.createInsecure());
console.log(`Server running at ${host}:${port}`);
server.start();
