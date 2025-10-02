import 'package:equatable/equatable.dart';

enum TimeType { Stopwatch, Timer }

class TimeState extends Equatable {
  final int duration;
  final TimeType type;

  const TimeState({required this.duration, required this.type});

  @override
  List<Object> get props => [duration];
}
