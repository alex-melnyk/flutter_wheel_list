import 'package:flutter/material.dart';
import 'package:flutter_wheel_list/widgets/scrollable_digits.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ScrollableDigits(),
            ScrollableDigits(),
            ScrollableDigits(
              onIncreased: () {
                print('OK');
              },
            )
          ],
        ),
      ),
    );
  }
}
