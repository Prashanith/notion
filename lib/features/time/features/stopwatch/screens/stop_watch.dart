import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../widgets/page_wrappers/plain_scaffold.dart';
import '../../../bloc/time/ticker.dart';
import '../../../bloc/time/time_bloc.dart';
import '../../../bloc/time/time_event.dart';
import '../../../bloc/time/time_state.dart';

class StopWatch extends StatelessWidget {
  const StopWatch({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimeBloc(ticker: Ticker()),
      child: PlainScaffold(widget: Center(child: TimerView())),
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimeBloc, TimeState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton.filled(
              icon: const Icon(Icons.pause),
              onPressed: () => context.read<TimeBloc>().add(
                TimePaused(duration: 47, type: TimeType.Stopwatch),
              ),
            ),
            IconButton.filled(
              icon: const Icon(Icons.play_arrow),
              onPressed: () => context.read<TimeBloc>().add(
                TimeInit(duration: 47, type: TimeType.Stopwatch),
              ),
            ),
            IconButton.filled(
              icon: const Icon(Icons.play_arrow),
              onPressed: () => context.read<TimeBloc>().add(
                TimeInit(duration: 47, type: TimeType.Stopwatch),
              ),
            ),
          ],
        );
      },
    );
  }
}

class TimerView extends StatelessWidget {
  const TimerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Actions(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 100.0),
              child: Center(child: TimerText()),
            ),
          ],
        ),
      ],
    );
  }
}

class TimerText extends StatelessWidget {
  const TimerText({super.key});
  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimeBloc bloc) => bloc.state.duration);
    final minutesStr = ((duration / 60) % 60).floor().toString().padLeft(
      2,
      '0',
    );
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
    return Text(
      '$minutesStr:$secondsStr',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
