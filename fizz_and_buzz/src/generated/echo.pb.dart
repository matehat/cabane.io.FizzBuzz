///
//  Generated code. Do not modify.
//  source: echo.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class EchoQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EchoQuery', package: const $pb.PackageName('cabane.io'), createEmptyInstance: create)
    ..aInt64(1, 'number')
    ..hasRequiredFields = false
  ;

  EchoQuery._() : super();
  factory EchoQuery() => create();
  factory EchoQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EchoQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EchoQuery clone() => EchoQuery()..mergeFromMessage(this);
  EchoQuery copyWith(void Function(EchoQuery) updates) => super.copyWith((message) => updates(message as EchoQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EchoQuery create() => EchoQuery._();
  EchoQuery createEmptyInstance() => create();
  static $pb.PbList<EchoQuery> createRepeated() => $pb.PbList<EchoQuery>();
  static EchoQuery getDefault() => _defaultInstance ??= create()..freeze();
  static EchoQuery _defaultInstance;

  Int64 get number => $_getI64(0);
  set number(Int64 v) { $_setInt64(0, v); }
  $core.bool hasNumber() => $_has(0);
  void clearNumber() => clearField(1);
}

class EchoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EchoResponse', package: const $pb.PackageName('cabane.io'), createEmptyInstance: create)
    ..aOS(1, 'message')
    ..hasRequiredFields = false
  ;

  EchoResponse._() : super();
  factory EchoResponse() => create();
  factory EchoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EchoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  EchoResponse clone() => EchoResponse()..mergeFromMessage(this);
  EchoResponse copyWith(void Function(EchoResponse) updates) => super.copyWith((message) => updates(message as EchoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EchoResponse create() => EchoResponse._();
  EchoResponse createEmptyInstance() => create();
  static $pb.PbList<EchoResponse> createRepeated() => $pb.PbList<EchoResponse>();
  static EchoResponse getDefault() => _defaultInstance ??= create()..freeze();
  static EchoResponse _defaultInstance;

  $core.String get message => $_getS(0, '');
  set message($core.String v) { $_setString(0, v); }
  $core.bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);
}

