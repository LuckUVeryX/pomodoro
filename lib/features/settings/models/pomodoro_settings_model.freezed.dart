// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pomodoro_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PomodoroSettingsTearOff {
  const _$PomodoroSettingsTearOff();

  _PomodoroSettings call(
      {required Duration focusDuration,
      required Duration shortBreakDuration,
      required Duration longBreakDuration,
      required int pomodoroCount}) {
    return _PomodoroSettings(
      focusDuration: focusDuration,
      shortBreakDuration: shortBreakDuration,
      longBreakDuration: longBreakDuration,
      pomodoroCount: pomodoroCount,
    );
  }
}

/// @nodoc
const $PomodoroSettings = _$PomodoroSettingsTearOff();

/// @nodoc
mixin _$PomodoroSettings {
  Duration get focusDuration => throw _privateConstructorUsedError;
  Duration get shortBreakDuration => throw _privateConstructorUsedError;
  Duration get longBreakDuration => throw _privateConstructorUsedError;
  int get pomodoroCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroSettingsCopyWith<PomodoroSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroSettingsCopyWith<$Res> {
  factory $PomodoroSettingsCopyWith(
          PomodoroSettings value, $Res Function(PomodoroSettings) then) =
      _$PomodoroSettingsCopyWithImpl<$Res>;
  $Res call(
      {Duration focusDuration,
      Duration shortBreakDuration,
      Duration longBreakDuration,
      int pomodoroCount});
}

/// @nodoc
class _$PomodoroSettingsCopyWithImpl<$Res>
    implements $PomodoroSettingsCopyWith<$Res> {
  _$PomodoroSettingsCopyWithImpl(this._value, this._then);

  final PomodoroSettings _value;
  // ignore: unused_field
  final $Res Function(PomodoroSettings) _then;

  @override
  $Res call({
    Object? focusDuration = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
    Object? pomodoroCount = freezed,
  }) {
    return _then(_value.copyWith(
      focusDuration: focusDuration == freezed
          ? _value.focusDuration
          : focusDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      shortBreakDuration: shortBreakDuration == freezed
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      longBreakDuration: longBreakDuration == freezed
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      pomodoroCount: pomodoroCount == freezed
          ? _value.pomodoroCount
          : pomodoroCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PomodoroSettingsCopyWith<$Res>
    implements $PomodoroSettingsCopyWith<$Res> {
  factory _$PomodoroSettingsCopyWith(
          _PomodoroSettings value, $Res Function(_PomodoroSettings) then) =
      __$PomodoroSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {Duration focusDuration,
      Duration shortBreakDuration,
      Duration longBreakDuration,
      int pomodoroCount});
}

/// @nodoc
class __$PomodoroSettingsCopyWithImpl<$Res>
    extends _$PomodoroSettingsCopyWithImpl<$Res>
    implements _$PomodoroSettingsCopyWith<$Res> {
  __$PomodoroSettingsCopyWithImpl(
      _PomodoroSettings _value, $Res Function(_PomodoroSettings) _then)
      : super(_value, (v) => _then(v as _PomodoroSettings));

  @override
  _PomodoroSettings get _value => super._value as _PomodoroSettings;

  @override
  $Res call({
    Object? focusDuration = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
    Object? pomodoroCount = freezed,
  }) {
    return _then(_PomodoroSettings(
      focusDuration: focusDuration == freezed
          ? _value.focusDuration
          : focusDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      shortBreakDuration: shortBreakDuration == freezed
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      longBreakDuration: longBreakDuration == freezed
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      pomodoroCount: pomodoroCount == freezed
          ? _value.pomodoroCount
          : pomodoroCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PomodoroSettings implements _PomodoroSettings {
  const _$_PomodoroSettings(
      {required this.focusDuration,
      required this.shortBreakDuration,
      required this.longBreakDuration,
      required this.pomodoroCount});

  @override
  final Duration focusDuration;
  @override
  final Duration shortBreakDuration;
  @override
  final Duration longBreakDuration;
  @override
  final int pomodoroCount;

  @override
  String toString() {
    return 'PomodoroSettings(focusDuration: $focusDuration, shortBreakDuration: $shortBreakDuration, longBreakDuration: $longBreakDuration, pomodoroCount: $pomodoroCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PomodoroSettings &&
            const DeepCollectionEquality()
                .equals(other.focusDuration, focusDuration) &&
            const DeepCollectionEquality()
                .equals(other.shortBreakDuration, shortBreakDuration) &&
            const DeepCollectionEquality()
                .equals(other.longBreakDuration, longBreakDuration) &&
            const DeepCollectionEquality()
                .equals(other.pomodoroCount, pomodoroCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(focusDuration),
      const DeepCollectionEquality().hash(shortBreakDuration),
      const DeepCollectionEquality().hash(longBreakDuration),
      const DeepCollectionEquality().hash(pomodoroCount));

  @JsonKey(ignore: true)
  @override
  _$PomodoroSettingsCopyWith<_PomodoroSettings> get copyWith =>
      __$PomodoroSettingsCopyWithImpl<_PomodoroSettings>(this, _$identity);
}

abstract class _PomodoroSettings implements PomodoroSettings {
  const factory _PomodoroSettings(
      {required Duration focusDuration,
      required Duration shortBreakDuration,
      required Duration longBreakDuration,
      required int pomodoroCount}) = _$_PomodoroSettings;

  @override
  Duration get focusDuration;
  @override
  Duration get shortBreakDuration;
  @override
  Duration get longBreakDuration;
  @override
  int get pomodoroCount;
  @override
  @JsonKey(ignore: true)
  _$PomodoroSettingsCopyWith<_PomodoroSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
