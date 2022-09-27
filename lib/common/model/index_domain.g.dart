// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IndexDomain _$$_IndexDomainFromJson(Map<String, dynamic> json) =>
    _$_IndexDomain(
      status: json['status'] as String,
      message: json['message'],
      textHtml: json['textHtml'] as String,
      iconParser: json['iconParser'] as String,
    );

Map<String, dynamic> _$$_IndexDomainToJson(_$_IndexDomain instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'textHtml': instance.textHtml,
      'iconParser': instance.iconParser,
    };
