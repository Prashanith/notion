import 'dart:async';
import 'package:bloc/bloc.dart';
import 'ticker.dart';
import 'time_event.dart';
import 'time_state.dart';

class TimeBloc extends Bloc<TimeEvent, TimeState> {
  final Ticker _ticker;
  
  StreamSubscription<int>? _tickerSubscription;

   TimeBloc({required Ticker ticker, })
      : _ticker = ticker,
        super(TimeState(duration: 47, type: TimeType.Stopwatch)) {
    on<TimeInit>(_onStarted);
    on<TimePaused>(_onPaused);
    on<_TimeTicked>(_onTicked);
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimeInit event, Emitter<TimeState> emit) {
    emit(TimerRunInProgress(event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(_TimerTicked(duration: duration)));
  }

  void _onPaused(TimerPaused event, Emitter<TimeState> emit) {
    if (state is TimerRunInProgress) {
      _tickerSubscription?.pause();
      emit(TimerRunPause(state.duration));
    }
  }

  void _onTicked(_TimerTicked event, Emitter<TimeState> emit) {
    emit(
      event.duration > 0
          ? TimerRunInProgress(event.duration)
          : TimerRunComplete(),
    );
  }
}