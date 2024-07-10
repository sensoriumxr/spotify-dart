part of '_models.dart';

/// Json representation of a category
@JsonSerializable()
class Category extends Object {
  Category();

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  /// A link to the Web API endpoint returning full details of the category.
  String? href;

  /// The category icon, in various sizes.
  List<Image>? icons;

  /// The Spotify category ID of the category.
  String? id;

  /// The name of the category.
  String? name;
}
