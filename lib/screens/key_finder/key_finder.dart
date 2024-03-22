import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lyratune/components/circle_icon_button.dart';
import 'package:lyratune/components/note_display.dart';
import 'package:lyratune/components/tuner_display.dart';
import 'package:lyratune/controllers/tuner_controller.dart';
import 'package:lyratune/utils/styles.dart';

@RoutePage()
class KeyFinderScreen extends StatefulWidget {
  const KeyFinderScreen({Key? key}) : super(key: key);

  @override
  State<KeyFinderScreen> createState() => _KeyFinderScreenState();
}

class _KeyFinderScreenState extends State<KeyFinderScreen> {
  String? filePath;
  bool isPlaying = false;
  final controller = TunerController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(0, 1.6),
            image: AssetImage(AppImages.moon),
            fit: BoxFit.contain,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NoteDisplay(controller: controller),
              const SizedBox(height: AppSpacing.defaultSpacing * 5),
              TunerDisplay(
                controller: controller,
              ),
              // ElevatedButton(
              //   onPressed: () async {
              //     await _pickFile();
              //   },
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: const Color.fromARGB(255, 136, 71, 227),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30.0),
              //     ),
              //     padding:
              //         const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              //   ),
              //   child: const Row(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Text(
              //         'Importar Arquivo',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       SizedBox(width: 10),
              //       Icon(
              //         Icons.file_upload_outlined,
              //         color: Colors.white,
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                width: 250,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 46, 46, 46),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Observer(builder: (context) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleIconButton(
                          iconSize: 30,
                          backgroundColor: controller.isRecording
                              ? theme.colorScheme.error
                              : Colors.grey,
                          icon: Icons.stop,
                          onPressed: () {
                            controller.isRecording
                                ? controller.stopListen()
                                : null;
                            // Lógica para parar gravação e exibir opção de salvar áudio
                            // showDialog(
                            //   context: context,
                            //   builder: (BuildContext context) {
                            //     return AlertDialog(
                            //       title: const Text('Salvar Áudio?'),
                            //       content:
                            //           const Text('Deseja salvar este áudio?'),
                            //       actions: [
                            //         TextButton(
                            //           onPressed: () {
                            //             // Lógica para salvar áudio
                            //             Navigator.pop(context);
                            //           },
                            //           child: const Text('Sim'),
                            //         ),
                            //         TextButton(
                            //           onPressed: () {
                            //             // Lógica para descartar áudio
                            //             Navigator.pop(context);
                            //           },
                            //           child: const Text('Não'),
                            //         ),
                            //       ],
                            //     );
                            //   },
                            // );
                          },
                        ),
                        // CircleIconButton(
                        //   icon: isPlaying ? Icons.pause : Icons.play_arrow,
                        //   onPressed: () {
                        //     setState(() {
                        //       isPlaying = !isPlaying;
                        //     });
                        //     // Lógica para tocar/pausar áudio
                        //   },
                        //   iconSize: 55, // Altera a cor do botão de play para branco
                        // ),
                        CircleIconButton(
                          backgroundColor: controller.isRecording
                              ? Colors.grey
                              : theme.colorScheme.error,
                          icon: Icons.circle,
                          onPressed: () {
                            controller.isRecording
                                ? null
                                : controller.startListen();
                          },
                          iconSize: 30,
                        ),
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: AppSpacing.defaultSpacing ,
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickFile() async {
    String? pickedFilePath = await FilePicker.platform
        .pickFiles(
          type: FileType.audio,
        )
        .then((value) => value?.files.single.path);

    if (pickedFilePath != null) {
      setState(() {
        filePath = pickedFilePath;
      });
      print('Caminho do arquivo selecionado: $filePath');
    } else {
      print('Nenhum arquivo selecionado');
    }
  }
}
