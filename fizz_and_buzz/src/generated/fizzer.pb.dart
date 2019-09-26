///
//  Generated code. Do not modify.
//  source: fizzer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class FizzQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FizzQuery', package: const $pb.PackageName('cabane.io'), createEmptyInstance: create)
    ..aInt64(1, 'number')
    ..hasRequiredFields = false
  ;

  FizzQuery._() : super();
  factory FizzQuery() => create();
  factory FizzQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FizzQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FizzQuery clone() => FizzQuery()..mergeFromMessage(this);
  FizzQuery copyWith(void Function(FizzQuery) updates) => super.copyWith((message) => updates(message as FizzQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FizzQuery create() => FizzQuery._();
  FizzQuery createEmptyInstance() => create();
  static $pb.PbList<FizzQuery> createRepeated() => $pb.PbList<FizzQuery>();
  static FizzQuery getDefault() => _defaultInstance ??= create()..freeze();
  static FizzQuery _defaultInstance;

  Int64 get number => $_getI64(0);
  set number(Int64 v) { $_setInt64(0, v); }
  $core.bool hasNumber() => $_has(0);
  void clearNumber() => clearField(1);
}

class FizzResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FizzResponse', package: const $pb.PackageName('cabane.io'), createEmptyInstance: create)
    ..aOB(1, 'isFizz', protoName: 'isFizz')
    ..hasRequiredFields = false
  ;

  FizzResponse._() : super();
  factory FizzResponse() => create();
  factory FizzResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FizzResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FizzResponse clone() => FizzResponse()..mergeFromMessage(this);
  FizzResponse copyWith(void Function(FizzResponse) updates) => super.copyWith((message) => updates(message as FizzResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FizzResponse create() => FizzResponse._();
  FizzResponse createEmptyInstance() => create();
  static $pb.PbList<FizzResponse> createRepeated() => $pb.PbList<FizzResponse>();
  static FizzResponse getDefault() => _defaultInstance ??= create()..freeze();
  static FizzResponse _defaultInstance;

  $core.bool get isFizz => $_get(0, false);
  set isFizz($core.bool v) { $_setBool(0, v); }
  $core.bool hasIsFizz() => $_has(0);
  void clearIsFizz() => clearField(1);
}

