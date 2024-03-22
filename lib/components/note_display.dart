import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lyratune/controllers/tuner_controller.dart';
import 'package:pitchupdart/tuning_status.dart';

class NoteDisplay extends StatefulWidget {
  final TunerController controller;
  const NoteDisplay({super.key, required this.controller});

  @override
  State<NoteDisplay> createState() => _NoteDisplayState();
}

class _NoteDisplayState extends State<NoteDisplay> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final isRecording = widget.controller.isRecording;
      final status = widget.controller.status;
      final note = widget.controller.note;
      return isRecording
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Center(
                    child: status == TuningStatus.undefined
                        ? const SizedBox(
                            height: 40,
                            width: 40,
                          )
                        : Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: status == TuningStatus.tuned
                                    ? Colors.green.shade200
                                    : Colors.red.shade200,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 20,
                                      color: status == TuningStatus.tuned
                                          ? Colors.green.shade200
                                          : Colors.red.shade200)
                                ]),
                            child: Center(
                              child: Text(
                                note,
                                style: const TextStyle(
                                    color: Colors.white,
                                    // context.read<HomeBloc>().status =="TuningStatus.tuned"?Colors.green: Colors.red,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                  ),
                ])
          : const SizedBox(
              height: 40,
            );
    });
  }
}
