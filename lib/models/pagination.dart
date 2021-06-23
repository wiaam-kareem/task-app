import 'package:freezed_annotation/freezed_annotation.dart';
part 'pagination.freezed.dart';

part 'pagination.g.dart';

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination(
    @JsonKey(defaultValue: 0) final int? step,
    @JsonKey(defaultValue: 0) final int? lastStep,
  ) = _Pagination;
  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
