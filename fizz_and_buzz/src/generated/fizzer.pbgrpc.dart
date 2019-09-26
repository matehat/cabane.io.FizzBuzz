///
//  Generated code. Do not modify.
//  source: fizzer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'fizzer.pb.dart' as $2;
export 'fizzer.pb.dart';

class FizzClient extends $grpc.Client {
  static final _$ask = $grpc.ClientMethod<$2.FizzQuery, $2.FizzResponse>(
      '/cabane.io.Fizz/Ask',
      ($2.FizzQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.FizzResponse.fromBuffer(value));

  FizzClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$2.FizzResponse> ask($2.FizzQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$ask, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class FizzServiceBase extends $grpc.Service {
  $core.String get $name => 'cabane.io.Fizz';

  FizzServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.FizzQuery, $2.FizzResponse>(
        'Ask',
        ask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FizzQuery.fromBuffer(value),
        ($2.FizzResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.FizzResponse> ask_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FizzQuery> request) async {
    return ask(call, await request);
  }

  $async.Future<$2.FizzResponse> ask(
      $grpc.ServiceCall call, $2.FizzQuery request);
}
