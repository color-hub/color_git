import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        child: const Text('test'),
        onPressed: () async {
          final XTypeGroup typeGroup = XTypeGroup(
            label: 'images',
            extensions: <String>['jpg', 'png'],
          );
          final XFile? file = await openFile(acceptedTypeGroups: <XTypeGroup>[typeGroup]);
          print(file?.path);
          // String? path = await FilesystemPicker.open(
          //   title: 'Save to folder',
          //   context: context,
          //   rootDirectory: Directory.current,
          //   fsType: FilesystemType.folder,
          //   pickText: 'Save file to this folder',
          //   folderIconColor: Colors.teal,
          // );
          // print(path.toString());
        },
      ),
    );
  }
}
