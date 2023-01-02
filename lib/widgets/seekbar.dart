import 'dart:math';

import 'package:flutter/material.dart';

class SeekBarData {
  final Duration position;
  final Duration duration;

  SeekBarData(this.position, this.duration);
}

class SeekData extends StatefulWidget {
  final Duration position;
  final Duration duration;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  const SeekData(
      {Key? key,
      required this.position,
      required this.duration,
      this.onChanged,
      this.onChangeEnd})
      : super(key: key);

  @override
  State<SeekData> createState() => _SeekDataState();
}

class _SeekDataState extends State<SeekData> {
  double? dragValue;

  String formatDuration(Duration? duration) {
    if (duration == null) {
      return '--:--';
    } else {
      String minutes = duration.inMinutes.toString().padLeft(2, '0');
      String seconds =
          duration.inSeconds.remainder(60).toString().padLeft(2, '0');
      return '$minutes:$seconds';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(formatDuration(widget.position)),
          Expanded(
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 5,
                thumbShape: const RoundSliderThumbShape(
                  disabledThumbRadius: 4,
                  enabledThumbRadius: 4,
                ),
                overlayShape: const RoundSliderOverlayShape(
                  overlayRadius: 10,
                ),
                activeTrackColor: Colors.white,
                inactiveTrackColor: Colors.white.withOpacity(0.2),
                thumbColor: Colors.white,
                overlayColor: Colors.white,
              ),
              child: Slider(
                min: 0,
                max: widget.duration.inMilliseconds.toDouble(),
                value: min(
                  dragValue ?? widget.position.inMilliseconds.toDouble(),
                  widget.duration.inMilliseconds.toDouble(),
                ),
                onChanged: (value) {
                  setState(() {
                    dragValue = value;
                  });
                  if (widget.onChanged != null) {
                    widget.onChanged!(
                      Duration(
                        milliseconds: value.round(),
                      ),
                    );
                  }
                },
                onChangeEnd: (value) {
                  if (widget.onChangeEnd != null) {
                    widget.onChangeEnd!(
                      Duration(
                        milliseconds: value.round(),
                      ),
                    );
                  }
                  dragValue = null;
                },
              ),
            ),
          ),
          Text(formatDuration(widget.duration)),
        ],
      ),
    );
  }
}
