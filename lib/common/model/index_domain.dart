import 'package:freezed_annotation/freezed_annotation.dart';

part 'index_domain.freezed.dart';
part 'index_domain.g.dart';

@freezed
class IndexDomain with _$IndexDomain {
  const factory IndexDomain({
    required String status,
    required dynamic message,
    required String textHtml,
    required String iconParser,
  }) = _IndexDomain;

  factory IndexDomain.fromJson(Map<String, dynamic> json) =>
      _$IndexDomainFromJson(json);
}
