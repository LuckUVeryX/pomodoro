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
    );

Map<String, dynamic> _$$_PomodoroSettingsToJson(_$_PomodoroSettings instance) =>
    <String, dynamic>{
      'focusDuration': instance.focusDuration.inMicroseconds,
      'shortBreakDuration': instance.shortBreakDuration.inMicroseconds,
      'longBreakDuration': instance.longBreakDuration.inMicroseconds,
      'pomodoroCount': instance.pomodoroCount,
    };
