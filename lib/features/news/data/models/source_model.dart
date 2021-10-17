import 'package:clean_architech_flutter/features/news/domain/entities/source.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'source_model.g.dart';

@JsonSerializable()
class SourceModel extends Equatable {
  final String? id;
  final String name;

  const SourceModel({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];

  @override
  bool? get stringify => true;

  Source toSourceEntity() => Source(id: id??"0", name: name);

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);

  Map<String, dynamic> toJson() => _$SourceModelToJson(this);
}
