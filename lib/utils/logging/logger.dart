import 'dart:html';

import 'package:logger/logger.dart';

class ELoggerHelper{
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message){
    _logger.d(message);
  }

  static void info(String message){
    _logger.i(message);
  }

  static void waring(String message){
    _logger.w(message);
  }

  static void error(Storage message, [dynamic error]){
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}