import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lyratune/controllers/tuner_controller.dart';
import 'package:lyratune/utils/styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TunerDisplay extends StatefulWidget {
  final TunerController controller;
  const TunerDisplay({super.key, required this.controller});

  @override
  State<TunerDisplay> createState() => _TunerDisplayState();
}

class _TunerDisplayState extends State<TunerDisplay> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Observer(builder: (context) {
      return SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
              showLabels: false,
              showAxisLine: false,
              showTicks: false,
              minimum: 0,
              maximum: 99,
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 0, endValue: 33,
                  // color: const Color(0xFFFE2A25),
                  label: 'Baixo',
                  gradient: const SweepGradient(colors: <Color>[
                    AppColors.softPurple,
                  ], stops: <double>[
                    0.25
                  ]),
                  sizeUnit: GaugeSizeUnit.factor,
                  labelStyle: const GaugeTextStyle(
                      fontFamily: 'Roboto', color: Colors.white, fontSize: 20),
                  startWidth: 0.40, endWidth: 0.40,
                ),
                GaugeRange(
                  startValue: 33, endValue: 66,
                  // color:const Color(0xFFFFBA00),
                  label: 'Afinado',
                  gradient: SweepGradient(colors: <Color>[
                    AppColors.softPurple,
                    AppColors.success,
                    theme.colorScheme.error
                  ], stops: const <double>[
                    0.15,
                    0.5,
                    1
                  ]),
                  labelStyle: const GaugeTextStyle(
                      fontFamily: 'Roboto', color: Colors.white, fontSize: 20),
                  startWidth: 0.40, endWidth: 0.40,
                  sizeUnit: GaugeSizeUnit.factor,
                ),
                GaugeRange(
                  startValue: 66, endValue: 99,
                  // color:const Color(0xFF00AB47),
                  label: 'Alto',
                  gradient: const SweepGradient(
                      colors: <Color>[AppColors.error], stops: <double>[0.75]),
                  labelStyle: const GaugeTextStyle(
                      fontFamily: 'Roboto', color: Colors.white, fontSize: 20),
                  sizeUnit: GaugeSizeUnit.factor,
                  startWidth: 0.40, endWidth: 0.40,
                ),
              ],
              pointers: <GaugePointer>[
                NeedlePointer(
                    value: widget.controller.tunerDisplayValue,
                    needleStartWidth: 1,
                    needleEndWidth: 5,
                    needleColor: Colors.white,
                    knobStyle: const KnobStyle(
                        knobRadius: 0.09,
                        borderColor: Colors.white,
                        borderWidth: 0.02,
                        color: Colors.black))
              ])
        ],
      );
    });
  }
}
