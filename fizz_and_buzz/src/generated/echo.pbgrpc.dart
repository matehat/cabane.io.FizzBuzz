///
//  Generated code. Do not modify.
//  source: echo.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'echo.pb.dart' as $1;
export 'echo.pb.dart';

class EchoClient extends $grpc.Client {
  static final _$ask = $grpc.ClientMethod<$1.EchoQuery, $1.EchoResponse>(
      '/cabane.io.Echo/Ask',
      ($1.EchoQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EchoResponse.fromBuffer(value));

  EchoClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.EchoResponse> ask($1.EchoQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$ask, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class EchoServiceBase extends $grpc.Service {
  $core.String get $name => 'cabane.io.Echo';

  EchoServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.EchoQuery, $1.EchoResponse>(
        'Ask',
        ask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EchoQuery.fromBuffer(value),
        ($1.EchoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.EchoResponse> ask_Pre(
      $grpc.ServiceCall call, $async.Future<$1.EchoQuery> request) async {
    return ask(call, await request);
  }

  $async.Future<$1.EchoResponse> ask(
      $grpc.ServiceCall call, $1.EchoQuery request);
}
