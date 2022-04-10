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

PomodoroSettings _$PomodoroSettingsFromJson(Map<String, dynamic> json) {
  return _PomodoroSettings.fromJson(json);
}

/// @nodoc
class _$PomodoroSettingsTearOff {
  const _$PomodoroSettingsTearOff();

  _PomodoroSettings call(
      {required Duration focusDuration,
      required Duration shortBreakDuration,
      required Duration longBreakDuration,
      required int pomodoroCount,
      required PomodoroSettingsError settingsError}) {
    return _PomodoroSettings(
      focusDuration: focusDuration,
      shortBreakDuration: shortBreakDuration,
      longBreakDuration: longBreakDuration,
      pomodoroCount: pomodoroCount,
      settingsError: settingsError,
    );
  }

  PomodoroSettings fromJson(Map<String, Object?> json) {
    return PomodoroSettings.fromJson(json);
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
  PomodoroSettingsError get settingsError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      int pomodoroCount,
      PomodoroSettingsError settingsError});

  $PomodoroSettingsErrorCopyWith<$Res> get settingsError;
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
    Object? settingsError = freezed,
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
      settingsError: settingsError == freezed
          ? _value.settingsError
          : settingsError // ignore: cast_nullable_to_non_nullable
              as PomodoroSettingsError,
    ));
  }

  @override
  $PomodoroSettingsErrorCopyWith<$Res> get settingsError {
    return $PomodoroSettingsErrorCopyWith<$Res>(_value.settingsError, (value) {
      return _then(_value.copyWith(settingsError: value));
    });
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
      int pomodoroCount,
      PomodoroSettingsError settingsError});

  @override
  $PomodoroSettingsErrorCopyWith<$Res> get settingsError;
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
    Object? settingsError = freezed,
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
      settingsError: settingsError == freezed
          ? _value.settingsError
          : settingsError // ignore: cast_nullable_to_non_nullable
              as PomodoroSettingsError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PomodoroSettings implements _PomodoroSettings {
  const _$_PomodoroSettings(
      {required this.focusDuration,
      required this.shortBreakDuration,
      required this.longBreakDuration,
      required this.pomodoroCount,
      required this.settingsError});

  factory _$_PomodoroSettings.fromJson(Map<String, dynamic> json) =>
      _$$_PomodoroSettingsFromJson(json);

  @override
  final Duration focusDuration;
  @override
  final Duration shortBreakDuration;
  @override
  final Duration longBreakDuration;
  @override
  final int pomodoroCount;
  @override
  final PomodoroSettingsError settingsError;

  @override
  String toString() {
    return 'PomodoroSettings(focusDuration: $focusDuration, shortBreakDuration: $shortBreakDuration, longBreakDuration: $longBreakDuration, pomodoroCount: $pomodoroCount, settingsError: $settingsError)';
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
                .equals(other.pomodoroCount, pomodoroCount) &&
            const DeepCollectionEquality()
                .equals(other.settingsError, settingsError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(focusDuration),
      const DeepCollectionEquality().hash(shortBreakDuration),
      const DeepCollectionEquality().hash(longBreakDuration),
      const DeepCollectionEquality().hash(pomodoroCount),
      const DeepCollectionEquality().hash(settingsError));

  @JsonKey(ignore: true)
  @override
  _$PomodoroSettingsCopyWith<_PomodoroSettings> get copyWith =>
      __$PomodoroSettingsCopyWithImpl<_PomodoroSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PomodoroSettingsToJson(this);
  }
}

abstract class _PomodoroSettings implements PomodoroSettings {
  const factory _PomodoroSettings(
      {required Duration focusDuration,
      required Duration shortBreakDuration,
      required Duration longBreakDuration,
      required int pomodoroCount,
      required PomodoroSettingsError settingsError}) = _$_PomodoroSettings;

  factory _PomodoroSettings.fromJson(Map<String, dynamic> json) =
      _$_PomodoroSettings.fromJson;

  @override
  Duration get focusDuration;
  @override
  Duration get shortBreakDuration;
  @override
  Duration get longBreakDuration;
  @override
  int get pomodoroCount;
  @override
  PomodoroSettingsError get settingsError;
  @override
  @JsonKey(ignore: true)
  _$PomodoroSettingsCopyWith<_PomodoroSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

PomodoroSettingsError _$PomodoroSettingsErrorFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'none':
      return _None.fromJson(json);
    case 'zeroDuration':
      return _ZeroDuration.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'PomodoroSettingsError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$PomodoroSettingsErrorTearOff {
  const _$PomodoroSettingsErrorTearOff();

  _None none() {
    return const _None();
  }

  _ZeroDuration zeroDuration() {
    return const _ZeroDuration();
  }

  PomodoroSettingsError fromJson(Map<String, Object?> json) {
    return PomodoroSettingsError.fromJson(json);
  }
}

/// @nodoc
const $PomodoroSettingsError = _$PomodoroSettingsErrorTearOff();

/// @nodoc
mixin _$PomodoroSettingsError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() zeroDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? zeroDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? zeroDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_ZeroDuration value) zeroDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_ZeroDuration value)? zeroDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_ZeroDuration value)? zeroDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroSettingsErrorCopyWith<$Res> {
  factory $PomodoroSettingsErrorCopyWith(PomodoroSettingsError value,
          $Res Function(PomodoroSettingsError) then) =
      _$PomodoroSettingsErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroSettingsErrorCopyWithImpl<$Res>
    implements $PomodoroSettingsErrorCopyWith<$Res> {
  _$PomodoroSettingsErrorCopyWithImpl(this._value, this._then);

  final PomodoroSettingsError _value;
  // ignore: unused_field
  final $Res Function(PomodoroSettingsError) _then;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res>
    extends _$PomodoroSettingsErrorCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc
@JsonSerializable()
class _$_None implements _None {
  const _$_None({String? $type}) : $type = $type ?? 'none';

  factory _$_None.fromJson(Map<String, dynamic> json) => _$$_NoneFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PomodoroSettingsError.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() zeroDuration,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? zeroDuration,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? zeroDuration,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_ZeroDuration value) zeroDuration,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_ZeroDuration value)? zeroDuration,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_ZeroDuration value)? zeroDuration,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoneToJson(this);
  }
}

abstract class _None implements PomodoroSettingsError {
  const factory _None() = _$_None;

  factory _None.fromJson(Map<String, dynamic> json) = _$_None.fromJson;
}

/// @nodoc
abstract class _$ZeroDurationCopyWith<$Res> {
  factory _$ZeroDurationCopyWith(
          _ZeroDuration value, $Res Function(_ZeroDuration) then) =
      __$ZeroDurationCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZeroDurationCopyWithImpl<$Res>
    extends _$PomodoroSettingsErrorCopyWithImpl<$Res>
    implements _$ZeroDurationCopyWith<$Res> {
  __$ZeroDurationCopyWithImpl(
      _ZeroDuration _value, $Res Function(_ZeroDuration) _then)
      : super(_value, (v) => _then(v as _ZeroDuration));

  @override
  _ZeroDuration get _value => super._value as _ZeroDuration;
}

/// @nodoc
@JsonSerializable()
class _$_ZeroDuration implements _ZeroDuration {
  const _$_ZeroDuration({String? $type}) : $type = $type ?? 'zeroDuration';

  factory _$_ZeroDuration.fromJson(Map<String, dynamic> json) =>
      _$$_ZeroDurationFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PomodoroSettingsError.zeroDuration()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZeroDuration);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() zeroDuration,
  }) {
    return zeroDuration();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? zeroDuration,
  }) {
    return zeroDuration?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? zeroDuration,
    required TResult orElse(),
  }) {
    if (zeroDuration != null) {
      return zeroDuration();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_ZeroDuration value) zeroDuration,
  }) {
    return zeroDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_ZeroDuration value)? zeroDuration,
  }) {
    return zeroDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_ZeroDuration value)? zeroDuration,
    required TResult orElse(),
  }) {
    if (zeroDuration != null) {
      return zeroDuration(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZeroDurationToJson(this);
  }
}

abstract class _ZeroDuration implements PomodoroSettingsError {
  const factory _ZeroDuration() = _$_ZeroDuration;

  factory _ZeroDuration.fromJson(Map<String, dynamic> json) =
      _$_ZeroDuration.fromJson;
}
