import 'dart:async';
import 'dart:io' show Platform;

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/service_api.dart' show ServiceCall, Service;

import './generated/buzzer.pbgrpc.dart' show BuzzServiceBase;
import './generated/buzzer.pb.dart' show BuzzQuery, BuzzResponse;
import './generated/fizzer.pbgrpc.dart' show FizzServiceBase;
import './generated/fizzer.pb.dart' show FizzQuery, FizzResponse;

abstract class FizzBuzzMixin {
  int get divider;
  bool testNumber(Int64 number) => number % divider == 0;
}

class BuzzService extends BuzzServiceBase with FizzBuzzMixin {
  @override
  int get divider => 5;

  @override
  Future<BuzzResponse> ask(ServiceCall call, BuzzQuery query) async {
    return BuzzResponse()..isBuzz = testNumber(query.number);
  }
}

class FizzService extends FizzServiceBase with FizzBuzzMixin {
  @override
  int get divider => 3;

  @override
  Future<FizzResponse> ask(ServiceCall call, FizzQuery query) async {
    return FizzResponse()..isFizz = testNumber(query.number);
  }
}

Future<Null> main(List<String> args) async {
  List<Service> services = [];
  Map<String, String> envVars = Platform.environment;
  String host;
  int port;

  switch (args[0]) {
    case 'fizz':
      services.add(new FizzService());
      host = envVars["FIZZ_SERVICE_HOST"] ?? "127.0.0.1";
      port = int.parse(envVars["FIZZ_SERVICE_PORT"] ?? "50051");
      break;

    case 'buzz':
      services.add(new BuzzService());
      host = envVars["BUZZ_SERVICE_HOST"] ?? "127.0.0.1";
      port = int.parse(envVars["BUZZ_SERVICE_PORT"] ?? "50051");
      break;

    default:
      print("Unrecognized service name");
  }

  if (services.length > 0) {
    final server = new grpc.Server(services);
    await server.serve(port: port, address: host);
    print('Server [${args[0]}] listening on 127.0.0.1:50051');
  }
}
