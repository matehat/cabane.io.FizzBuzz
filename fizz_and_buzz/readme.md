## Generate protocol buffer modules

```shell
$ pub global activate protoc_plugin
$ export PATH=$PATH:$HOME/.pub-cache/bin
$ cd ..
$ protoc -I (pwd)/protobuf --dart_out=(pwd)/fizz/src/generated (pwd)/protobuf/*.proto
$ protoc -I (pwd)/protobuf --dart_out=grpc:(pwd)/fizz/src/generated (pwd)/protobuf/*.proto
```
