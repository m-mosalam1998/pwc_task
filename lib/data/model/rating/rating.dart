import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Rating({
    @JsonKey(name: 'Source') required String source,
    @JsonKey(name: 'Value') required String value,
  }) = _Rating;
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
