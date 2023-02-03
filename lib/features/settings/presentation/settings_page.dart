import 'package:fluent_ui/fluent_ui.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('test');
    return const NavigationView(
      appBar: NavigationAppBar(),
      content: Text("Test"),
    );
  }
}
