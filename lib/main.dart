// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Logging App'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               // in debug mode, the print output will appear
//               print('Button was pressed!');
//             },
//             child: const Text('Button'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyLogger {
//   static void debug(String message) {
//     if (kDebugMode) {
//       print('DEBUG: $message');
//     }
//   }

//   static void info(String message) {
//     print('INFO: $message');
//   }

//   static void warning(String message) {
//     print('WARNING: $message');
//   }

//   static void error(String message) {
//     print('ERROR: $message');
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Logging App'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   MyLogger.debug('Debug message: Button was pressed!');
//                    MyLogger.info('Info message: Button was pressed!');
//                    MyLogger.warning('Warning message: Button was pressed!');
//                    MyLogger.error('Error message: Button was pressed!');
//                 },
//                 child: Text('Press button'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:logger/logger.dart';

// void main() {
//   runApp(MyApp());
// }

// var logger = Logger(
//   filter: ProductionFilter(), // Konfiguriere den Filter nach Bedarf
//   printer:
//       PrettyPrinter(), // Verwende PrettyPrinter für eine gut lesbare Ausgabe
// );

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Logging App'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               logger.d('Debug message: Button was pressed!');
//               logger.i('Info message: Button was pressed!');
//               logger.w('Warning message: Button was pressed!');
//               logger.e('Error message: Button was pressed!');
//               // logger.f('what a fatal log',
//               //     error: 'error',
//               //     stackTrace: StackTrace.current);
//             },
//             child: Text('Press button'),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

var logger = Logger(
  filter: ProductionFilter(), // Configure the filter as needed
  printer: PrettyPrinter(), // Use PrettyPrinter for a readable output
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Logging App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  logger.d('Debug Message: Button pressed!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Debug Log',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  logger.i('Info Message: Button pressed!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text(
                  'Info Log',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  logger.w('Warning Message: Button pressed!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  'Warning Log',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  logger.e('Error Message: Button pressed!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text(
                  'Error Log',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
