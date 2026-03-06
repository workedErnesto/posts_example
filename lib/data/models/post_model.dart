import 'package:json_annotation/json_annotation.dart';
import 'package:posts/domain/entity/post_entity.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  PostEntity toEntity() =>
      PostEntity(userId: userId, id: id, title: title, body: body);

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
