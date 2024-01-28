import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';



@JsonSerializable()
class Meteos{

  String timezone;
  Current current;
  List<Hourly> hourly;
  List<Daily> daily;

  Meteos(
  {
    required this.timezone,
    required this.current,
    required this.hourly,
    required this.daily
}
      );


  factory Meteos.fromJson(Map<String, dynamic> json) => _$MeteosFromJson(json);

  Map<String, dynamic> toJson() => _$MeteosToJson(this);
}

@JsonSerializable()
class Current{
  double temp;
  int humidity;
  List<Weather> weather;

  Current({
    required this.temp,
    required this.humidity,
    required this.weather
  });

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}
@JsonSerializable()
class Hourly {

  double temp;
  int humidity;
  List<Weather> weather;

  Hourly({
    required this.temp,
    required this.humidity,
    required this.weather
});

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyToJson(this);

}
@JsonSerializable()
class Weather{
  String main;
  String description;
  String icon;

  Weather({
    required this.main,
    required this.description,
    required this.icon
});

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

}
@JsonSerializable()
class Daily {

  String summary;
  Temp temp;
  int humidity;
  List<Weather> weather;

  Daily(
  {
    required this.summary,
    required this.temp,
    required this.humidity,
    required this.weather
}
      );

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  Map<String, dynamic> toJson() => _$DailyToJson(this);

}
@JsonSerializable()
class Temp{
  double day;
  Temp({
    required this.day
});


  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);

  Map<String, dynamic> toJson() => _$TempToJson(this);
}



