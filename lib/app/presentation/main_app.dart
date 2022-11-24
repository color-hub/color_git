import 'package:color_git/app/routes/app_router.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:provider/provider.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: const [],
      child: FluentApp.router(
        title: 'Green Lists',
        //localizationsDelegates: context.localizationDelegates,
        //supportedLocales: context.supportedLocales,
        //locale: context.locale,
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
        color: Colors.orange,
        //themeMode: state.themeMode,
        // theme: ColorHubTheme.lightTheme(state.appColor).copyWith(
        //   extensions: <ThemeExtension<dynamic>>[state.themeGradient],
        // ),
        // darkTheme: ColorHubTheme.darkTheme(state.appColor).copyWith(
        //   extensions: <ThemeExtension<dynamic>>[state.themeGradient],
        // ),
      ),
    );
  }
}
