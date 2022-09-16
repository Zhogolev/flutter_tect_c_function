import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:native_add/native_add.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Center(
              child: Text('current == $current'),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              child: const Text('+1'),
              onPressed: () {
                setState(() {
                  current = NativeAdd.nativeAdd(1, current);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
