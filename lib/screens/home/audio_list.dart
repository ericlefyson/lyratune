import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lyratune/utils/styles.dart';

class AudioList extends StatelessWidget {
  const AudioList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: const EdgeInsets.all(5.0), child: AddAudioButton()),
        SizedBox(
          height: 150.0,
          width: MediaQuery.of(context).size.width - 70,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return AudioButton(index: index + 1);
            },
          ),
        ),
      ],
    );
  }
}

class AddAudioButton extends StatelessWidget {
  const AddAudioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60, // Largura do botão roxo
      height: 50, // Altura do botão roxo
      decoration: const BoxDecoration(
        color: AppColors.secondary, // A cor roxa do botão
        shape: BoxShape.circle, // Faz o botão ser um círculo
      ),
      child: const Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.add_circle_outline, // Ícone de círculo
            color: AppColors.weakPurple, // Cor do ícone do círculo
            size: 35, // Tamanho do ícone do círculo
          ),
          Icon(
            Icons.add, // Ícone de adição
            color: AppColors.weakPurple, // Cor do ícone de adição
            size: 5, // Tamanho do ícone de adição
          ),
        ],
      ),
    );
  }
}

class AudioButton extends StatelessWidget {
  final int index;

  const AudioButton({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      height: 50.0,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: AppColors.lightestPurple,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Áudio $index',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 0, right: 0),
              child: AudioWaveform(),
            ),
          ),
        ],
      ),
    );
  }
}

class AudioWaveform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(100, 40), // Size of the waveform
      painter: WaveformPainter(),
    );
  }
}

class WaveformPainter extends CustomPainter {
  final math.Random random = math.Random(0);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0;

    // Define the pattern of the waveform here, heights are percentage of max amplitude.
    // final pattern = [
    //   0.6,
    //   1.0,
    //   0.7,
    //   0.9,
    //   0.8,
    //   1.0,
    //   0.7,
    //   0.8,
    //   0.9,
    //   0.6,
    //   0.2,
    //   0.1,
    //   0.3,
    //   1.0,
    //   0.7,
    //   0.9,
    //   1.0,
    //   0.7,
    //   0.5,
    // ];
    const int patternLength = 20; // Defina o tamanho do padrão desejado.

    List<double> pattern =
        List.generate(patternLength, (index) => random.nextDouble());

    final maxAmplitude = size.height; // Maximum peak to valley amplitude
    final segmentWidth = size.width / (pattern.length * 2 - 5);

    double startX = 0.0;
    for (int i = 0; i < pattern.length; i++) {
      // Calculate the line height based on the pattern percentage.
      final lineHeight = maxAmplitude * pattern[i];

      // Draw the line segment.
      canvas.drawLine(
        Offset(startX, size.height - lineHeight),
        Offset(startX, size.height - (maxAmplitude - lineHeight)),
        paint,
      );

      // The last line doesn't need a gap after it.
      if (i < pattern.length - 1) {
        startX +=
            segmentWidth; // Move to the position for the next line segment.

        // Draw a gap.
        startX +=
            segmentWidth; // Move to the position for the next line segment.
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
