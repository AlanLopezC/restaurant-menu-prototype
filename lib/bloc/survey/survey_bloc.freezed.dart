// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SurveyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionIndex, int optionIndex, String? other)
        updateSurvey,
    required TResult Function() resetSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionIndex, int optionIndex, String? other)?
        updateSurvey,
    TResult Function()? resetSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionIndex, int optionIndex, String? other)?
        updateSurvey,
    TResult Function()? resetSurvey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSurveyEvent value) updateSurvey,
    required TResult Function(_ResetSurveyEvent value) resetSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateSurveyEvent value)? updateSurvey,
    TResult Function(_ResetSurveyEvent value)? resetSurvey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSurveyEvent value)? updateSurvey,
    TResult Function(_ResetSurveyEvent value)? resetSurvey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyEventCopyWith<$Res> {
  factory $SurveyEventCopyWith(
          SurveyEvent value, $Res Function(SurveyEvent) then) =
      _$SurveyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveyEventCopyWithImpl<$Res> implements $SurveyEventCopyWith<$Res> {
  _$SurveyEventCopyWithImpl(this._value, this._then);

  final SurveyEvent _value;
  // ignore: unused_field
  final $Res Function(SurveyEvent) _then;
}

/// @nodoc
abstract class _$$_UpdateSurveyEventCopyWith<$Res> {
  factory _$$_UpdateSurveyEventCopyWith(_$_UpdateSurveyEvent value,
          $Res Function(_$_UpdateSurveyEvent) then) =
      __$$_UpdateSurveyEventCopyWithImpl<$Res>;
  $Res call({int questionIndex, int optionIndex, String? other});
}

/// @nodoc
class __$$_UpdateSurveyEventCopyWithImpl<$Res>
    extends _$SurveyEventCopyWithImpl<$Res>
    implements _$$_UpdateSurveyEventCopyWith<$Res> {
  __$$_UpdateSurveyEventCopyWithImpl(
      _$_UpdateSurveyEvent _value, $Res Function(_$_UpdateSurveyEvent) _then)
      : super(_value, (v) => _then(v as _$_UpdateSurveyEvent));

  @override
  _$_UpdateSurveyEvent get _value => super._value as _$_UpdateSurveyEvent;

  @override
  $Res call({
    Object? questionIndex = freezed,
    Object? optionIndex = freezed,
    Object? other = freezed,
  }) {
    return _then(_$_UpdateSurveyEvent(
      questionIndex: questionIndex == freezed
          ? _value.questionIndex
          : questionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      optionIndex: optionIndex == freezed
          ? _value.optionIndex
          : optionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      other: other == freezed
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UpdateSurveyEvent
    with DiagnosticableTreeMixin
    implements _UpdateSurveyEvent {
  const _$_UpdateSurveyEvent(
      {required this.questionIndex, required this.optionIndex, this.other});

  @override
  final int questionIndex;
  @override
  final int optionIndex;
  @override
  final String? other;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SurveyEvent.updateSurvey(questionIndex: $questionIndex, optionIndex: $optionIndex, other: $other)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SurveyEvent.updateSurvey'))
      ..add(DiagnosticsProperty('questionIndex', questionIndex))
      ..add(DiagnosticsProperty('optionIndex', optionIndex))
      ..add(DiagnosticsProperty('other', other));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSurveyEvent &&
            const DeepCollectionEquality()
                .equals(other.questionIndex, questionIndex) &&
            const DeepCollectionEquality()
                .equals(other.optionIndex, optionIndex) &&
            const DeepCollectionEquality().equals(other.other, this.other));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(questionIndex),
      const DeepCollectionEquality().hash(optionIndex),
      const DeepCollectionEquality().hash(other));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateSurveyEventCopyWith<_$_UpdateSurveyEvent> get copyWith =>
      __$$_UpdateSurveyEventCopyWithImpl<_$_UpdateSurveyEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionIndex, int optionIndex, String? other)
        updateSurvey,
    required TResult Function() resetSurvey,
  }) {
    return updateSurvey(questionIndex, optionIndex, other);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionIndex, int optionIndex, String? other)?
        updateSurvey,
    TResult Function()? resetSurvey,
  }) {
    return updateSurvey?.call(questionIndex, optionIndex, other);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionIndex, int optionIndex, String? other)?
        updateSurvey,
    TResult Function()? resetSurvey,
    required TResult orElse(),
  }) {
    if (updateSurvey != null) {
      return updateSurvey(questionIndex, optionIndex, other);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSurveyEvent value) updateSurvey,
    required TResult Function(_ResetSurveyEvent value) resetSurvey,
  }) {
    return updateSurvey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateSurveyEvent value)? updateSurvey,
    TResult Function(_ResetSurveyEvent value)? resetSurvey,
  }) {
    return updateSurvey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSurveyEvent value)? updateSurvey,
    TResult Function(_ResetSurveyEvent value)? resetSurvey,
    required TResult orElse(),
  }) {
    if (updateSurvey != null) {
      return updateSurvey(this);
    }
    return orElse();
  }
}

abstract class _UpdateSurveyEvent implements SurveyEvent {
  const factory _UpdateSurveyEvent(
      {required final int questionIndex,
      required final int optionIndex,
      final String? other}) = _$_UpdateSurveyEvent;

  int get questionIndex;
  int get optionIndex;
  String? get other;
  @JsonKey(ignore: true)
  _$$_UpdateSurveyEventCopyWith<_$_UpdateSurveyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetSurveyEventCopyWith<$Res> {
  factory _$$_ResetSurveyEventCopyWith(
          _$_ResetSurveyEvent value, $Res Function(_$_ResetSurveyEvent) then) =
      __$$_ResetSurveyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetSurveyEventCopyWithImpl<$Res>
    extends _$SurveyEventCopyWithImpl<$Res>
    implements _$$_ResetSurveyEventCopyWith<$Res> {
  __$$_ResetSurveyEventCopyWithImpl(
      _$_ResetSurveyEvent _value, $Res Function(_$_ResetSurveyEvent) _then)
      : super(_value, (v) => _then(v as _$_ResetSurveyEvent));

  @override
  _$_ResetSurveyEvent get _value => super._value as _$_ResetSurveyEvent;
}

/// @nodoc

class _$_ResetSurveyEvent
    with DiagnosticableTreeMixin
    implements _ResetSurveyEvent {
  const _$_ResetSurveyEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SurveyEvent.resetSurvey()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SurveyEvent.resetSurvey'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetSurveyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int questionIndex, int optionIndex, String? other)
        updateSurvey,
    required TResult Function() resetSurvey,
  }) {
    return resetSurvey();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int questionIndex, int optionIndex, String? other)?
        updateSurvey,
    TResult Function()? resetSurvey,
  }) {
    return resetSurvey?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionIndex, int optionIndex, String? other)?
        updateSurvey,
    TResult Function()? resetSurvey,
    required TResult orElse(),
  }) {
    if (resetSurvey != null) {
      return resetSurvey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSurveyEvent value) updateSurvey,
    required TResult Function(_ResetSurveyEvent value) resetSurvey,
  }) {
    return resetSurvey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdateSurveyEvent value)? updateSurvey,
    TResult Function(_ResetSurveyEvent value)? resetSurvey,
  }) {
    return resetSurvey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSurveyEvent value)? updateSurvey,
    TResult Function(_ResetSurveyEvent value)? resetSurvey,
    required TResult orElse(),
  }) {
    if (resetSurvey != null) {
      return resetSurvey(this);
    }
    return orElse();
  }
}

abstract class _ResetSurveyEvent implements SurveyEvent {
  const factory _ResetSurveyEvent() = _$_ResetSurveyEvent;
}

/// @nodoc
mixin _$SurveyState {
  List<int> get survey => throw _privateConstructorUsedError;
  String get lastQuestion => throw _privateConstructorUsedError;
  String get cellphone => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyStateCopyWith<SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyStateCopyWith<$Res> {
  factory $SurveyStateCopyWith(
          SurveyState value, $Res Function(SurveyState) then) =
      _$SurveyStateCopyWithImpl<$Res>;
  $Res call(
      {List<int> survey,
      String lastQuestion,
      String cellphone,
      bool completed});
}

/// @nodoc
class _$SurveyStateCopyWithImpl<$Res> implements $SurveyStateCopyWith<$Res> {
  _$SurveyStateCopyWithImpl(this._value, this._then);

  final SurveyState _value;
  // ignore: unused_field
  final $Res Function(SurveyState) _then;

  @override
  $Res call({
    Object? survey = freezed,
    Object? lastQuestion = freezed,
    Object? cellphone = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      survey: survey == freezed
          ? _value.survey
          : survey // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lastQuestion: lastQuestion == freezed
          ? _value.lastQuestion
          : lastQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      cellphone: cellphone == freezed
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SurveyStateCopyWith<$Res>
    implements $SurveyStateCopyWith<$Res> {
  factory _$$_SurveyStateCopyWith(
          _$_SurveyState value, $Res Function(_$_SurveyState) then) =
      __$$_SurveyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<int> survey,
      String lastQuestion,
      String cellphone,
      bool completed});
}

/// @nodoc
class __$$_SurveyStateCopyWithImpl<$Res> extends _$SurveyStateCopyWithImpl<$Res>
    implements _$$_SurveyStateCopyWith<$Res> {
  __$$_SurveyStateCopyWithImpl(
      _$_SurveyState _value, $Res Function(_$_SurveyState) _then)
      : super(_value, (v) => _then(v as _$_SurveyState));

  @override
  _$_SurveyState get _value => super._value as _$_SurveyState;

  @override
  $Res call({
    Object? survey = freezed,
    Object? lastQuestion = freezed,
    Object? cellphone = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$_SurveyState(
      survey: survey == freezed
          ? _value._survey
          : survey // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lastQuestion: lastQuestion == freezed
          ? _value.lastQuestion
          : lastQuestion // ignore: cast_nullable_to_non_nullable
              as String,
      cellphone: cellphone == freezed
          ? _value.cellphone
          : cellphone // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SurveyState with DiagnosticableTreeMixin implements _SurveyState {
  _$_SurveyState(
      {required final List<int> survey,
      required this.lastQuestion,
      required this.cellphone,
      required this.completed})
      : _survey = survey;

  final List<int> _survey;
  @override
  List<int> get survey {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_survey);
  }

  @override
  final String lastQuestion;
  @override
  final String cellphone;
  @override
  final bool completed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SurveyState(survey: $survey, lastQuestion: $lastQuestion, cellphone: $cellphone, completed: $completed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SurveyState'))
      ..add(DiagnosticsProperty('survey', survey))
      ..add(DiagnosticsProperty('lastQuestion', lastQuestion))
      ..add(DiagnosticsProperty('cellphone', cellphone))
      ..add(DiagnosticsProperty('completed', completed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyState &&
            const DeepCollectionEquality().equals(other._survey, _survey) &&
            const DeepCollectionEquality()
                .equals(other.lastQuestion, lastQuestion) &&
            const DeepCollectionEquality().equals(other.cellphone, cellphone) &&
            const DeepCollectionEquality().equals(other.completed, completed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_survey),
      const DeepCollectionEquality().hash(lastQuestion),
      const DeepCollectionEquality().hash(cellphone),
      const DeepCollectionEquality().hash(completed));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyStateCopyWith<_$_SurveyState> get copyWith =>
      __$$_SurveyStateCopyWithImpl<_$_SurveyState>(this, _$identity);
}

abstract class _SurveyState implements SurveyState {
  factory _SurveyState(
      {required final List<int> survey,
      required final String lastQuestion,
      required final String cellphone,
      required final bool completed}) = _$_SurveyState;

  @override
  List<int> get survey;
  @override
  String get lastQuestion;
  @override
  String get cellphone;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyStateCopyWith<_$_SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}
