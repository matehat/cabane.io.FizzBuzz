///
//  Generated code. Do not modify.
//  source: buzzer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class BuzzQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BuzzQuery', package: const $pb.PackageName('cabane.io'), createEmptyInstance: create)
    ..aInt64(1, 'number')
    ..hasRequiredFields = false
  ;

  BuzzQuery._() : super();
  factory BuzzQuery() => create();
  factory BuzzQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuzzQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BuzzQuery clone() => BuzzQuery()..mergeFromMessage(this);
  BuzzQuery copyWith(void Function(BuzzQuery) updates) => super.copyWith((message) => updates(message as BuzzQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuzzQuery create() => BuzzQuery._();
  BuzzQuery createEmptyInstance() => create();
  static $pb.PbList<BuzzQuery> createRepeated() => $pb.PbList<BuzzQuery>();
  static BuzzQuery getDefault() => _defaultInstance ??= create()..freeze();
  static BuzzQuery _defaultInstance;

  Int64 get number => $_getI64(0);
  set number(Int64 v) { $_setInt64(0, v); }
  $core.bool hasNumber() => $_has(0);
  void clearNumber() => clearField(1);
}

class BuzzResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BuzzResponse', package: const $pb.PackageName('cabane.io'), createEmptyInstance: create)
    ..aOB(1, 'isBuzz', protoName: 'isBuzz')
    ..hasRequiredFields = false
  ;

  BuzzResponse._() : super();
  factory BuzzResponse() => create();
  factory BuzzResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuzzResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BuzzResponse clone() => BuzzResponse()..mergeFromMessage(this);
  BuzzResponse copyWith(void Function(BuzzResponse) updates) => super.copyWith((message) => updates(message as BuzzResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuzzResponse create() => BuzzResponse._();
  BuzzResponse createEmptyInstance() => create();
  static $pb.PbList<BuzzResponse> createRepeated() => $pb.PbList<BuzzResponse>();
  static BuzzResponse getDefault() => _defaultInstance ??= create()..freeze();
  static BuzzResponse _defaultInstance;

  $core.bool get isBuzz => $_get(0, false);
  set isBuzz($core.bool v) { $_setBool(0, v); }
  $core.bool hasIsBuzz() => $_has(0);
  void clearIsBuzz() => clearField(1);
}

