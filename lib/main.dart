import 'package:flutter/material.dart';
import 'package:libgit2dart/libgit2dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        child: const Text('test'),
        onPressed: () {
          print(Libgit2.version);
          //final repo = Repository.open('D:Repo/friflex/bristol_mobile');
          // log('test');
          // final String? directoryPath = await getDirectoryPath();
          // if (directoryPath != null) {
          //   log(directoryPath.toString());
          //   try {
          //     print(repo.branches);
          //   } catch (e) {
          //     log(e.toString());
          //   }
          // }
        },
      ),
    );
  }
}
