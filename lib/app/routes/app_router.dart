import 'package:auto_route/auto_route.dart';
import 'package:color_git/features/home/home_page.dart';
import 'package:color_git/features/settings/presentation/settings_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

final appRouter = AppRouter();

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page|Modal,Route',
  routes: [
    AutoRoute(
      initial: true,
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(page: SettingsPage, path: 'settings'),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}
