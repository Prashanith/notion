import 'package:get_it/get_it.dart';
import '../navigation/route_generator.dart';
import 'local_storage.dart';

final locator = GetIt.instance;

class ServiceInitializer {
  static Future<void> initializeServices() async {
    locator.registerSingleton<RouteGenerator>(RouteGenerator());
    locator.registerSingleton<LocalStorage>(LocalStorage());

  }
}