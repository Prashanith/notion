import 'dart:async';
import 'package:bloc/bloc.dart';
import 'ticker.dart';
import 'time_event.dart';
import 'time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  final Ticker _ticker;

  StreamSubscription<int>? _tickerSubscription;

  TimeBloc({required Ticker ticker})
    : _ticker = ticker,
      super(TimeState(duration: 47, type: TimeType.Stopwatch)) {
    on<TimeInit>(_onStarted);
    on<TimeTicked>(_onTicked);
    on<TimePaused>(_onPaused);
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimeInit event, Emitter<TimeState> emit) {
    emit(TimeState(duration: event.duration, type: event.type));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration, type: event.type)
        .listen(
          (duration) => add(TimeTicked(duration: duration, type: event.type)),
        );
  }

  void _onPaused(TimePaused event, Emitter<TimeState> emit) {
    if (state.type == TimeType.Stopwatch) {
      _tickerSubscription?.pause();
      emit(TimeState(duration: event.duration, type: event.type));
    }
  }

  void _onTicked(TimeTicked event, Emitter<TimeState> emit) {
    emit(TimeState(duration: event.duration, type: event.type));
  }
}
