///
//  Generated code. Do not modify.
//  source: reducer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reducer.pb.dart' as $3;
export 'reducer.pb.dart';

class ReducerClient extends $grpc.Client {
  static final _$ask = $grpc.ClientMethod<$3.ReduceQuery, $3.ReduceResult>(
      '/cabane.io.Reducer/Ask',
      ($3.ReduceQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.ReduceResult.fromBuffer(value));

  ReducerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$3.ReduceResult> ask($3.ReduceQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$ask, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class ReducerServiceBase extends $grpc.Service {
  $core.String get $name => 'cabane.io.Reducer';

  ReducerServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ReduceQuery, $3.ReduceResult>(
        'Ask',
        ask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ReduceQuery.fromBuffer(value),
        ($3.ReduceResult value) => value.writeToBuffer()));
  }

  $async.Future<$3.ReduceResult> ask_Pre(
      $grpc.ServiceCall call, $async.Future<$3.ReduceQuery> request) async {
    return ask(call, await request);
  }

  $async.Future<$3.ReduceResult> ask(
      $grpc.ServiceCall call, $3.ReduceQuery request);
}
