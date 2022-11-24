import 'package:color_git/app/presentation/main_app.dart';
import 'package:color_git/app/presentation/main_app_runner.dart';

Future<void> main() async {
  const env = String.fromEnvironment('env', defaultValue: 'dev');

  final MainAppRunner runner = MainAppRunner(env);
  const MainApp app = MainApp();

  runner.run(app);
}
