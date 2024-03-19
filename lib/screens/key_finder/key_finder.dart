import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:lyratune/components/circle_icon_button.dart';

class KeyFinderScreen extends StatefulWidget {
  const KeyFinderScreen({Key? key}) : super(key: key);

  @override
  _KeyFinderScreenState createState() => _KeyFinderScreenState();
}

class _KeyFinderScreenState extends State<KeyFinderScreen> {
  String? filePath;
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Finder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is the Route Page'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await _pickFile();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 136, 71, 227),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Importar Arquivo',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.file_upload_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            if (filePath != null)
              Text(
                'Arquivo Selecionado: $filePath',
                style: TextStyle(color: Colors.black),
              ),
            SizedBox(
              width: 250,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromARGB(255, 46, 46, 46),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleIconButton(
                      iconSize: 30,
                      backgroundColor: Colors.grey,
                      icon: Icons.stop,
                      onPressed: () {
                        // Lógica para parar gravação e exibir opção de salvar áudio
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Salvar Áudio?'),
                              content: Text('Deseja salvar este áudio?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    // Lógica para salvar áudio
                                    Navigator.pop(context);
                                  },
                                  child: Text('Sim'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Lógica para descartar áudio
                                    Navigator.pop(context);
                                  },
                                  child: Text('Não'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                    CircleIconButton(
                      icon: isPlaying ? Icons.pause : Icons.play_arrow,
                      onPressed: () {
                        setState(() {
                          isPlaying = !isPlaying;
                        });
                        // Lógica para tocar/pausar áudio
                      },
                      iconSize: 55, // Altera a cor do botão de play para branco
                    ),
                    CircleIconButton(
                      backgroundColor: Colors.red,
                      icon: Icons.circle,
                      onPressed: () {
                        // Lógica para iniciar gravação
                      },
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickFile() async {
    var storagePermissionStatus = await Permission.storage.status;
    if (storagePermissionStatus.isGranted) {
      String? pickedFilePath = await FilePicker.platform.pickFiles(
        type: FileType.audio,
      ).then((value) => value?.files.single.path);

      if (pickedFilePath != null) {
        setState(() {
          filePath = pickedFilePath;
        });
        print('Caminho do arquivo selecionado: $filePath');
      } else {
        print('Nenhum arquivo selecionado');
      }
    } else {
      var storagePermissionResult = await Permission.storage.request();
      if (storagePermissionResult.isGranted) {
        await _pickFile(); // Tentar selecionar o arquivo novamente após a concessão da permissão
      } else {
        print('Permissão de armazenamento não concedida');
      }
    }
  }
}