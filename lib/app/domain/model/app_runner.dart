import 'package:flutter/material.dart';

abstract class AppRunner {
  Future<void> preloadData();

  Future<void> run(Widget app);
}
