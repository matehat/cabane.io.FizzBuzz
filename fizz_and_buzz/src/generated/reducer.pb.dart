///
//  Generated code. Do not modify.
//  source: reducer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class ReduceQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReduceQuery', package: const $pb.PackageName('cabane.io'), createEmptyInstance: create)
    ..aInt64(1, 'number')
    ..hasRequiredFields = false
  ;

  ReduceQuery._() : super();
  factory ReduceQuery() => create();
  factory ReduceQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReduceQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReduceQuery clone() => ReduceQuery()..mergeFromMessage(this);
  ReduceQuery copyWith(void Function(ReduceQuery) updates) => super.copyWith((message) => updates(message as ReduceQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReduceQuery create() => ReduceQuery._();
  ReduceQuery createEmptyInstance() => create();
  static $pb.PbList<ReduceQuery> createRepeated() => $pb.PbList<ReduceQuery>();
  static ReduceQuery getDefault() => _defaultInstance ??= create()..freeze();
  static ReduceQuery _defaultInstance;

  Int64 get number => $_getI64(0);
  set number(Int64 v) { $_setInt64(0, v); }
  $core.bool hasNumber() => $_has(0);
  void clearNumber() => clearField(1);
}

class ReduceResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReduceResult', package: const $pb.PackageName('cabane.io'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  ReduceResult._() : super();
  factory ReduceResult() => create();
  factory ReduceResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReduceResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReduceResult clone() => ReduceResult()..mergeFromMessage(this);
  ReduceResult copyWith(void Function(ReduceResult) updates) => super.copyWith((message) => updates(message as ReduceResult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReduceResult create() => ReduceResult._();
  ReduceResult createEmptyInstance() => create();
  static $pb.PbList<ReduceResult> createRepeated() => $pb.PbList<ReduceResult>();
  static ReduceResult getDefault() => _defaultInstance ??= create()..freeze();
  static ReduceResult _defaultInstance;

  $core.String get message => $_getS(0, '');
  set message($core.String v) { $_setString(0, v); }
  $core.bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);
}

