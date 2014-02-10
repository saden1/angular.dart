library controller;

import 'package:angular/angular.dart';
import 'package:perf_api/perf_api.dart';

// Temporary, please follow https://github.com/angular/angular.dart/issues/476
@MirrorsUsed(targets: const['controller'], override: '*')
import 'dart:mirrors';

@NgController(
    selector: '[controller]',
    publishAs: 'ctrl')
class AppController {
  AppController();
}

class MyAppModule extends Module {
  MyAppModule() {
    type(AppController);
    type(Profiler, implementedBy: Profiler); // comment out to enable profiling
  }
}

main() {
  ngBootstrap(module: new MyAppModule());
}
