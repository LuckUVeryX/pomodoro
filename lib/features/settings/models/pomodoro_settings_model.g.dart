// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PomodoroSettings _$$_PomodoroSettingsFromJson(Map<String, dynamic> json) =>
    _$_PomodoroSettings(
      focusDuration: Duration(microseconds: json['focusDuration'] as int),
      shortBreakDuration:
          Duration(microseconds: json['shortBreakDuration'] as int),
      longBreakDuration:
          Duration(microseconds: json['longBreakDuration'] as int),
      pomodoroCount: json['pomodoroCount'] as int,
      settingsError: PomodoroSettingsError.fromJson(
          json['settingsError'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PomodoroSettingsToJson(_$_PomodoroSettings instance) =>
    <String, dynamic>{
      'focusDuration': instance.focusDuration.inMicroseconds,
      'shortBreakDuration': instance.shortBreakDuration.inMicroseconds,
      'longBreakDuration': instance.longBreakDuration.inMicroseconds,
      'pomodoroCount': instance.pomodoroCount,
      'settingsError': instance.settingsError,
    };

_$_None _$$_NoneFromJson(Map<String, dynamic> json) => _$_None(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_NoneToJson(_$_None instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_ZeroDuration _$$_ZeroDurationFromJson(Map<String, dynamic> json) =>
    _$_ZeroDuration(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_ZeroDurationToJson(_$_ZeroDuration instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
