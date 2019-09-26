///
//  Generated code. Do not modify.
//  source: buzzer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'buzzer.pb.dart' as $0;
export 'buzzer.pb.dart';

class BuzzClient extends $grpc.Client {
  static final _$ask = $grpc.ClientMethod<$0.BuzzQuery, $0.BuzzResponse>(
      '/cabane.io.Buzz/Ask',
      ($0.BuzzQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BuzzResponse.fromBuffer(value));

  BuzzClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.BuzzResponse> ask($0.BuzzQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$ask, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class BuzzServiceBase extends $grpc.Service {
  $core.String get $name => 'cabane.io.Buzz';

  BuzzServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BuzzQuery, $0.BuzzResponse>(
        'Ask',
        ask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BuzzQuery.fromBuffer(value),
        ($0.BuzzResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.BuzzResponse> ask_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BuzzQuery> request) async {
    return ask(call, await request);
  }

  $async.Future<$0.BuzzResponse> ask(
      $grpc.ServiceCall call, $0.BuzzQuery request);
}
