// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
  id: (json['id'] as num).toInt(),
  priority:
      $enumDecodeNullable(_$PriorityEnumMap, json['priority']) ?? Priority.low,
  title: json['title'] as String,
  description: json['description'] as String? ?? '-',
  isCompleted: json['isCompleted'] as bool,
);

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
  'id': instance.id,
  'priority': _$PriorityEnumMap[instance.priority]!,
  'title': instance.title,
  'description': instance.description,
  'isCompleted': instance.isCompleted,
};

const _$PriorityEnumMap = {
  Priority.low: 'low',
  Priority.medium: 'medium',
  Priority.high: 'high',
};
