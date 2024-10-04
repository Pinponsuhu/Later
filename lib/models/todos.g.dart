// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodosImpl _$$TodosImplFromJson(Map<String, dynamic> json) => _$TodosImpl(
      title: json['title'] as String,
      userId: (json['userId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$TodosImplToJson(_$TodosImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'userId': instance.userId,
      'id': instance.id,
      'completed': instance.completed,
    };
