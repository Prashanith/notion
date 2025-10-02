import 'time_state.dart';

sealed class TimeEvent {
  const TimeEvent();
}

final class TimeInit extends TimeEvent {
  const TimeInit({required this.duration, required this.type});
  final int duration;
  final TimeType type;
}

final class TimeStarted extends TimeEvent {
  const TimeStarted();
}

final class TimePaused extends TimeEvent {
  const TimePaused();
}

final class TimeResumed extends TimeEvent {
  const TimeResumed();
}

class TimeReset extends TimeEvent {
  const TimeReset();
}
