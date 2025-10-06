import 'time_state.dart';

sealed class TimeEvent {
  TimeEvent({required this.duration, required this.type});
  int duration = 47;
  TimeType type = TimeType.Stopwatch;
}

final class TimeInit extends TimeEvent {
  TimeInit({required super.duration, required super.type});
}

final class TimeStarted extends TimeEvent {
  TimeStarted({required super.duration, required super.type});
}

final class TimePaused extends TimeEvent {
  TimePaused({required super.duration, required super.type});
}

final class TimeResumed extends TimeEvent {
  TimeResumed({required super.duration, required super.type});
}

class TimeReset extends TimeEvent {
  TimeReset({required super.duration, required super.type});
}

final class TimeTicked extends TimeEvent {
  TimeTicked({required super.duration, required super.type});
}

final class TimeCompleted extends TimeEvent {
  TimeCompleted({required super.duration, required super.type});
}
