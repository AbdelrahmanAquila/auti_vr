import 'package:auti_vr/modules/last_try.dart';
import 'package:auti_vr/shared/components.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('show vid'),
          onPressed: () {
            navigateTo(context, const Vid360());
          },
        ),
      ),
    );
  }
}
