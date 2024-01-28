// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meteos _$MeteosFromJson(Map<String, dynamic> json) => Meteos(
      timezone: json['timezone'] as String,
      current: Current.fromJson(json['current'] as Map<String, dynamic>),
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => Hourly.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => Daily.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MeteosToJson(Meteos instance) => <String, dynamic>{
      'timezone': instance.timezone,
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
      temp: (json['temp'] as num).toDouble(),
      humidity: json['humidity'] as int,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
      'weather': instance.weather,
    };

Hourly _$HourlyFromJson(Map<String, dynamic> json) => Hourly(
      temp: (json['temp'] as num).toDouble(),
      humidity: json['humidity'] as int,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
      'weather': instance.weather,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) => Daily(
      summary: json['summary'] as String,
      temp: Temp.fromJson(json['temp'] as Map<String, dynamic>),
      humidity: json['humidity'] as int,
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'summary': instance.summary,
      'temp': instance.temp,
      'humidity': instance.humidity,
      'weather': instance.weather,
    };

Temp _$TempFromJson(Map<String, dynamic> json) => Temp(
      day: (json['day'] as num).toDouble(),
    );

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'day': instance.day,
    };
