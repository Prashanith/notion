import 'time_state.dart';

class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks, required TimeType type}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => type == TimeType.Timer ? ticks - x - 1 : x + 1,
    ).take(ticks);
  }
}
