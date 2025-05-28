import 'package:logger/logger.dart';
import 'package:flutter/foundation.dart';

class Log {
  static final Logger _logger = Logger(
    filter: kReleaseMode ? ProductionFilter() : DevelopmentFilter(),
    printer: SimplePrinter(colors: false), // <-- importante
    output: null, // consola por defecto
  );

  static Logger get p => _logger;
}

class ProductionFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return event.level.index >= Level.warning.index;
  }
}

/*
logger.t("Trace log");
logger.d("Debug log");
logger.i("Info log");
logger.w("Warning log");
logger.e("Error log", error: 'Test Error');
logger.f("What a fatal log", error: error, stackTrace: stackTrace);
*/
