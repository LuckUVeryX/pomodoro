// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pomodoro_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PomodoroTimerStateTearOff {
  const _$PomodoroTimerStateTearOff();

  _Reset reset() {
    return const _Reset();
  }

  _Running running() {
    return const _Running();
  }

  _Paused paused() {
    return const _Paused();
  }
}

/// @nodoc
const $PomodoroTimerState = _$PomodoroTimerStateTearOff();

/// @nodoc
mixin _$PomodoroTimerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() running,
    required TResult Function() paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? running,
    TResult Function()? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? running,
    TResult Function()? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Running value) running,
    required TResult Function(_Paused value) paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Running value)? running,
    TResult Function(_Paused value)? paused,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Running value)? running,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroTimerStateCopyWith<$Res> {
  factory $PomodoroTimerStateCopyWith(
          PomodoroTimerState value, $Res Function(PomodoroTimerState) then) =
      _$PomodoroTimerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroTimerStateCopyWithImpl<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  _$PomodoroTimerStateCopyWithImpl(this._value, this._then);

  final PomodoroTimerState _value;
  // ignore: unused_field
  final $Res Function(PomodoroTimerState) _then;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$PomodoroTimerStateCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'PomodoroTimerState.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() running,
    required TResult Function() paused,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? running,
    TResult Function()? paused,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? running,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Running value) running,
    required TResult Function(_Paused value) paused,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Running value)? running,
    TResult Function(_Paused value)? paused,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Running value)? running,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements PomodoroTimerState {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
abstract class _$RunningCopyWith<$Res> {
  factory _$RunningCopyWith(_Running value, $Res Function(_Running) then) =
      __$RunningCopyWithImpl<$Res>;
}

/// @nodoc
class __$RunningCopyWithImpl<$Res>
    extends _$PomodoroTimerStateCopyWithImpl<$Res>
    implements _$RunningCopyWith<$Res> {
  __$RunningCopyWithImpl(_Running _value, $Res Function(_Running) _then)
      : super(_value, (v) => _then(v as _Running));

  @override
  _Running get _value => super._value as _Running;
}

/// @nodoc

class _$_Running implements _Running {
  const _$_Running();

  @override
  String toString() {
    return 'PomodoroTimerState.running()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Running);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() running,
    required TResult Function() paused,
  }) {
    return running();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? running,
    TResult Function()? paused,
  }) {
    return running?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? running,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Running value) running,
    required TResult Function(_Paused value) paused,
  }) {
    return running(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Running value)? running,
    TResult Function(_Paused value)? paused,
  }) {
    return running?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Running value)? running,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (running != null) {
      return running(this);
    }
    return orElse();
  }
}

abstract class _Running implements PomodoroTimerState {
  const factory _Running() = _$_Running;
}

/// @nodoc
abstract class _$PausedCopyWith<$Res> {
  factory _$PausedCopyWith(_Paused value, $Res Function(_Paused) then) =
      __$PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PausedCopyWithImpl<$Res> extends _$PomodoroTimerStateCopyWithImpl<$Res>
    implements _$PausedCopyWith<$Res> {
  __$PausedCopyWithImpl(_Paused _value, $Res Function(_Paused) _then)
      : super(_value, (v) => _then(v as _Paused));

  @override
  _Paused get _value => super._value as _Paused;
}

/// @nodoc

class _$_Paused implements _Paused {
  const _$_Paused();

  @override
  String toString() {
    return 'PomodoroTimerState.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reset,
    required TResult Function() running,
    required TResult Function() paused,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? running,
    TResult Function()? paused,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reset,
    TResult Function()? running,
    TResult Function()? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Reset value) reset,
    required TResult Function(_Running value) running,
    required TResult Function(_Paused value) paused,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Running value)? running,
    TResult Function(_Paused value)? paused,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Reset value)? reset,
    TResult Function(_Running value)? running,
    TResult Function(_Paused value)? paused,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused implements PomodoroTimerState {
  const factory _Paused() = _$_Paused;
}

/// @nodoc
class _$PomodoroStateTearOff {
  const _$PomodoroStateTearOff();

  _Work work() {
    return const _Work();
  }

  _ShortBreak shortBreak() {
    return const _ShortBreak();
  }

  _LongBreak longBreak() {
    return const _LongBreak();
  }
}

/// @nodoc
const $PomodoroState = _$PomodoroStateTearOff();

/// @nodoc
mixin _$PomodoroState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() shortBreak,
    required TResult Function() longBreak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? shortBreak,
    TResult Function()? longBreak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? shortBreak,
    TResult Function()? longBreak,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_ShortBreak value) shortBreak,
    required TResult Function(_LongBreak value) longBreak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_ShortBreak value)? shortBreak,
    TResult Function(_LongBreak value)? longBreak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_ShortBreak value)? shortBreak,
    TResult Function(_LongBreak value)? longBreak,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroStateCopyWith<$Res> {
  factory $PomodoroStateCopyWith(
          PomodoroState value, $Res Function(PomodoroState) then) =
      _$PomodoroStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PomodoroStateCopyWithImpl<$Res>
    implements $PomodoroStateCopyWith<$Res> {
  _$PomodoroStateCopyWithImpl(this._value, this._then);

  final PomodoroState _value;
  // ignore: unused_field
  final $Res Function(PomodoroState) _then;
}

/// @nodoc
abstract class _$WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) then) =
      __$WorkCopyWithImpl<$Res>;
}

/// @nodoc
class __$WorkCopyWithImpl<$Res> extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(_Work _value, $Res Function(_Work) _then)
      : super(_value, (v) => _then(v as _Work));

  @override
  _Work get _value => super._value as _Work;
}

/// @nodoc

class _$_Work implements _Work {
  const _$_Work();

  @override
  String toString() {
    return 'PomodoroState.work()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Work);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() shortBreak,
    required TResult Function() longBreak,
  }) {
    return work();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? shortBreak,
    TResult Function()? longBreak,
  }) {
    return work?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? shortBreak,
    TResult Function()? longBreak,
    required TResult orElse(),
  }) {
    if (work != null) {
      return work();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_ShortBreak value) shortBreak,
    required TResult Function(_LongBreak value) longBreak,
  }) {
    return work(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_ShortBreak value)? shortBreak,
    TResult Function(_LongBreak value)? longBreak,
  }) {
    return work?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_ShortBreak value)? shortBreak,
    TResult Function(_LongBreak value)? longBreak,
    required TResult orElse(),
  }) {
    if (work != null) {
      return work(this);
    }
    return orElse();
  }
}

abstract class _Work implements PomodoroState {
  const factory _Work() = _$_Work;
}

/// @nodoc
abstract class _$ShortBreakCopyWith<$Res> {
  factory _$ShortBreakCopyWith(
          _ShortBreak value, $Res Function(_ShortBreak) then) =
      __$ShortBreakCopyWithImpl<$Res>;
}

/// @nodoc
class __$ShortBreakCopyWithImpl<$Res> extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$ShortBreakCopyWith<$Res> {
  __$ShortBreakCopyWithImpl(
      _ShortBreak _value, $Res Function(_ShortBreak) _then)
      : super(_value, (v) => _then(v as _ShortBreak));

  @override
  _ShortBreak get _value => super._value as _ShortBreak;
}

/// @nodoc

class _$_ShortBreak implements _ShortBreak {
  const _$_ShortBreak();

  @override
  String toString() {
    return 'PomodoroState.shortBreak()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ShortBreak);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() shortBreak,
    required TResult Function() longBreak,
  }) {
    return shortBreak();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? shortBreak,
    TResult Function()? longBreak,
  }) {
    return shortBreak?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? shortBreak,
    TResult Function()? longBreak,
    required TResult orElse(),
  }) {
    if (shortBreak != null) {
      return shortBreak();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_ShortBreak value) shortBreak,
    required TResult Function(_LongBreak value) longBreak,
  }) {
    return shortBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_ShortBreak value)? shortBreak,
    TResult Function(_LongBreak value)? longBreak,
  }) {
    return shortBreak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_ShortBreak value)? shortBreak,
    TResult Function(_LongBreak value)? longBreak,
    required TResult orElse(),
  }) {
    if (shortBreak != null) {
      return shortBreak(this);
    }
    return orElse();
  }
}

abstract class _ShortBreak implements PomodoroState {
  const factory _ShortBreak() = _$_ShortBreak;
}

/// @nodoc
abstract class _$LongBreakCopyWith<$Res> {
  factory _$LongBreakCopyWith(
          _LongBreak value, $Res Function(_LongBreak) then) =
      __$LongBreakCopyWithImpl<$Res>;
}

/// @nodoc
class __$LongBreakCopyWithImpl<$Res> extends _$PomodoroStateCopyWithImpl<$Res>
    implements _$LongBreakCopyWith<$Res> {
  __$LongBreakCopyWithImpl(_LongBreak _value, $Res Function(_LongBreak) _then)
      : super(_value, (v) => _then(v as _LongBreak));

  @override
  _LongBreak get _value => super._value as _LongBreak;
}

/// @nodoc

class _$_LongBreak implements _LongBreak {
  const _$_LongBreak();

  @override
  String toString() {
    return 'PomodoroState.longBreak()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LongBreak);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() work,
    required TResult Function() shortBreak,
    required TResult Function() longBreak,
  }) {
    return longBreak();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? shortBreak,
    TResult Function()? longBreak,
  }) {
    return longBreak?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? work,
    TResult Function()? shortBreak,
    TResult Function()? longBreak,
    required TResult orElse(),
  }) {
    if (longBreak != null) {
      return longBreak();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Work value) work,
    required TResult Function(_ShortBreak value) shortBreak,
    required TResult Function(_LongBreak value) longBreak,
  }) {
    return longBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_ShortBreak value)? shortBreak,
    TResult Function(_LongBreak value)? longBreak,
  }) {
    return longBreak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Work value)? work,
    TResult Function(_ShortBreak value)? shortBreak,
    TResult Function(_LongBreak value)? longBreak,
    required TResult orElse(),
  }) {
    if (longBreak != null) {
      return longBreak(this);
    }
    return orElse();
  }
}

abstract class _LongBreak implements PomodoroState {
  const factory _LongBreak() = _$_LongBreak;
}

/// @nodoc
class _$PomodoroModelTearOff {
  const _$PomodoroModelTearOff();

  _PomodoroModel call(
      {required PomodoroTimerState pomodoroTimerState,
      required PomodoroState pomodoroState,
      required int count,
      required int totalCount,
      required Duration totalDuration,
      required Duration remainingDuration}) {
    return _PomodoroModel(
      pomodoroTimerState: pomodoroTimerState,
      pomodoroState: pomodoroState,
      count: count,
      totalCount: totalCount,
      totalDuration: totalDuration,
      remainingDuration: remainingDuration,
    );
  }
}

/// @nodoc
const $PomodoroModel = _$PomodoroModelTearOff();

/// @nodoc
mixin _$PomodoroModel {
  PomodoroTimerState get pomodoroTimerState =>
      throw _privateConstructorUsedError;
  PomodoroState get pomodoroState => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  Duration get totalDuration => throw _privateConstructorUsedError;
  Duration get remainingDuration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PomodoroModelCopyWith<PomodoroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroModelCopyWith<$Res> {
  factory $PomodoroModelCopyWith(
          PomodoroModel value, $Res Function(PomodoroModel) then) =
      _$PomodoroModelCopyWithImpl<$Res>;
  $Res call(
      {PomodoroTimerState pomodoroTimerState,
      PomodoroState pomodoroState,
      int count,
      int totalCount,
      Duration totalDuration,
      Duration remainingDuration});

  $PomodoroTimerStateCopyWith<$Res> get pomodoroTimerState;
  $PomodoroStateCopyWith<$Res> get pomodoroState;
}

/// @nodoc
class _$PomodoroModelCopyWithImpl<$Res>
    implements $PomodoroModelCopyWith<$Res> {
  _$PomodoroModelCopyWithImpl(this._value, this._then);

  final PomodoroModel _value;
  // ignore: unused_field
  final $Res Function(PomodoroModel) _then;

  @override
  $Res call({
    Object? pomodoroTimerState = freezed,
    Object? pomodoroState = freezed,
    Object? count = freezed,
    Object? totalCount = freezed,
    Object? totalDuration = freezed,
    Object? remainingDuration = freezed,
  }) {
    return _then(_value.copyWith(
      pomodoroTimerState: pomodoroTimerState == freezed
          ? _value.pomodoroTimerState
          : pomodoroTimerState // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerState,
      pomodoroState: pomodoroState == freezed
          ? _value.pomodoroState
          : pomodoroState // ignore: cast_nullable_to_non_nullable
              as PomodoroState,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      remainingDuration: remainingDuration == freezed
          ? _value.remainingDuration
          : remainingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }

  @override
  $PomodoroTimerStateCopyWith<$Res> get pomodoroTimerState {
    return $PomodoroTimerStateCopyWith<$Res>(_value.pomodoroTimerState,
        (value) {
      return _then(_value.copyWith(pomodoroTimerState: value));
    });
  }

  @override
  $PomodoroStateCopyWith<$Res> get pomodoroState {
    return $PomodoroStateCopyWith<$Res>(_value.pomodoroState, (value) {
      return _then(_value.copyWith(pomodoroState: value));
    });
  }
}

/// @nodoc
abstract class _$PomodoroModelCopyWith<$Res>
    implements $PomodoroModelCopyWith<$Res> {
  factory _$PomodoroModelCopyWith(
          _PomodoroModel value, $Res Function(_PomodoroModel) then) =
      __$PomodoroModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {PomodoroTimerState pomodoroTimerState,
      PomodoroState pomodoroState,
      int count,
      int totalCount,
      Duration totalDuration,
      Duration remainingDuration});

  @override
  $PomodoroTimerStateCopyWith<$Res> get pomodoroTimerState;
  @override
  $PomodoroStateCopyWith<$Res> get pomodoroState;
}

/// @nodoc
class __$PomodoroModelCopyWithImpl<$Res>
    extends _$PomodoroModelCopyWithImpl<$Res>
    implements _$PomodoroModelCopyWith<$Res> {
  __$PomodoroModelCopyWithImpl(
      _PomodoroModel _value, $Res Function(_PomodoroModel) _then)
      : super(_value, (v) => _then(v as _PomodoroModel));

  @override
  _PomodoroModel get _value => super._value as _PomodoroModel;

  @override
  $Res call({
    Object? pomodoroTimerState = freezed,
    Object? pomodoroState = freezed,
    Object? count = freezed,
    Object? totalCount = freezed,
    Object? totalDuration = freezed,
    Object? remainingDuration = freezed,
  }) {
    return _then(_PomodoroModel(
      pomodoroTimerState: pomodoroTimerState == freezed
          ? _value.pomodoroTimerState
          : pomodoroTimerState // ignore: cast_nullable_to_non_nullable
              as PomodoroTimerState,
      pomodoroState: pomodoroState == freezed
          ? _value.pomodoroState
          : pomodoroState // ignore: cast_nullable_to_non_nullable
              as PomodoroState,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      remainingDuration: remainingDuration == freezed
          ? _value.remainingDuration
          : remainingDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_PomodoroModel implements _PomodoroModel {
  const _$_PomodoroModel(
      {required this.pomodoroTimerState,
      required this.pomodoroState,
      required this.count,
      required this.totalCount,
      required this.totalDuration,
      required this.remainingDuration});

  @override
  final PomodoroTimerState pomodoroTimerState;
  @override
  final PomodoroState pomodoroState;
  @override
  final int count;
  @override
  final int totalCount;
  @override
  final Duration totalDuration;
  @override
  final Duration remainingDuration;

  @override
  String toString() {
    return 'PomodoroModel(pomodoroTimerState: $pomodoroTimerState, pomodoroState: $pomodoroState, count: $count, totalCount: $totalCount, totalDuration: $totalDuration, remainingDuration: $remainingDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PomodoroModel &&
            const DeepCollectionEquality()
                .equals(other.pomodoroTimerState, pomodoroTimerState) &&
            const DeepCollectionEquality()
                .equals(other.pomodoroState, pomodoroState) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.totalDuration, totalDuration) &&
            const DeepCollectionEquality()
                .equals(other.remainingDuration, remainingDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pomodoroTimerState),
      const DeepCollectionEquality().hash(pomodoroState),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(totalDuration),
      const DeepCollectionEquality().hash(remainingDuration));

  @JsonKey(ignore: true)
  @override
  _$PomodoroModelCopyWith<_PomodoroModel> get copyWith =>
      __$PomodoroModelCopyWithImpl<_PomodoroModel>(this, _$identity);
}

abstract class _PomodoroModel implements PomodoroModel {
  const factory _PomodoroModel(
      {required PomodoroTimerState pomodoroTimerState,
      required PomodoroState pomodoroState,
      required int count,
      required int totalCount,
      required Duration totalDuration,
      required Duration remainingDuration}) = _$_PomodoroModel;

  @override
  PomodoroTimerState get pomodoroTimerState;
  @override
  PomodoroState get pomodoroState;
  @override
  int get count;
  @override
  int get totalCount;
  @override
  Duration get totalDuration;
  @override
  Duration get remainingDuration;
  @override
  @JsonKey(ignore: true)
  _$PomodoroModelCopyWith<_PomodoroModel> get copyWith =>
      throw _privateConstructorUsedError;
}
