import 'package:flutter/foundation.dart';

enum Level { whisperingWoods }

enum Category { toad, box, hole, collect }

class Collectible {
  Collectible({
    @required this.id,
    @required this.level,
    @required this.category,
  })  : assert(id != null),
        assert(level != null),
        assert(category != null);

  final int id;
  final Level level;
  final Category category;

  factory Collectible.fromJson(Map<String, dynamic> json) {
    return Collectible(
        id: json["id"], level: json["level"], category: json["category"]);
  }
  String get thumbnailAssetPackage => 'assets/thumbnails';
  String get fullAssetPackage => 'assets/full';
  String get assetName => '$id.jpg';

  String toString() => 'id: $id, level: $level, category: $category';
}
