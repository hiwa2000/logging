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


import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyLogger {
  static void debug(String message) {
    if (kDebugMode) {
      print('DEBUG: $message');
    }
  }

  static void info(String message) {
    print('INFO: $message');
  }

  static void warning(String message) {
    print('WARNING: $message');
  }

  static void error(String message) {
    print('ERROR: $message');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Logging App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  MyLogger.debug('Debug message: Button was pressed!');
                   MyLogger.info('Info message: Button was pressed!');
                   MyLogger.warning('Warning message: Button was pressed!');
                   MyLogger.error('Error message: Button was pressed!');
                },
                child: Text('Press button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
