import 'package:color_git/app/di/di.dart';
import 'package:color_git/app/domain/model/app_runner.dart';
import 'package:flutter/cupertino.dart';

class MainAppRunner implements AppRunner {
  MainAppRunner(this.env);

  final String env;

  @override
  Future<void> preloadData() async {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies(env);
  }

  @override
  Future<void> run(Widget app) async {
    await preloadData();
    runApp(app);
  }
}
