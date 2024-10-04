// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Todos _$TodosFromJson(Map<String, dynamic> json) {
  return _Todos.fromJson(json);
}

/// @nodoc
mixin _$Todos {
  String get title => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this Todos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodosCopyWith<Todos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosCopyWith<$Res> {
  factory $TodosCopyWith(Todos value, $Res Function(Todos) then) =
      _$TodosCopyWithImpl<$Res, Todos>;
  @useResult
  $Res call({String title, int userId, int id, bool completed});
}

/// @nodoc
class _$TodosCopyWithImpl<$Res, $Val extends Todos>
    implements $TodosCopyWith<$Res> {
  _$TodosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? userId = null,
    Object? id = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodosImplCopyWith<$Res> implements $TodosCopyWith<$Res> {
  factory _$$TodosImplCopyWith(
          _$TodosImpl value, $Res Function(_$TodosImpl) then) =
      __$$TodosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, int userId, int id, bool completed});
}

/// @nodoc
class __$$TodosImplCopyWithImpl<$Res>
    extends _$TodosCopyWithImpl<$Res, _$TodosImpl>
    implements _$$TodosImplCopyWith<$Res> {
  __$$TodosImplCopyWithImpl(
      _$TodosImpl _value, $Res Function(_$TodosImpl) _then)
      : super(_value, _then);

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? userId = null,
    Object? id = null,
    Object? completed = null,
  }) {
    return _then(_$TodosImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodosImpl implements _Todos {
  _$TodosImpl(
      {required this.title,
      required this.userId,
      required this.id,
      required this.completed});

  factory _$TodosImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodosImplFromJson(json);

  @override
  final String title;
  @override
  final int userId;
  @override
  final int id;
  @override
  final bool completed;

  @override
  String toString() {
    return 'Todos(title: $title, userId: $userId, id: $id, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodosImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, userId, id, completed);

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodosImplCopyWith<_$TodosImpl> get copyWith =>
      __$$TodosImplCopyWithImpl<_$TodosImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodosImplToJson(
      this,
    );
  }
}

abstract class _Todos implements Todos {
  factory _Todos(
      {required final String title,
      required final int userId,
      required final int id,
      required final bool completed}) = _$TodosImpl;

  factory _Todos.fromJson(Map<String, dynamic> json) = _$TodosImpl.fromJson;

  @override
  String get title;
  @override
  int get userId;
  @override
  int get id;
  @override
  bool get completed;

  /// Create a copy of Todos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodosImplCopyWith<_$TodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
