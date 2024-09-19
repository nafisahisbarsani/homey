import 'package:flutter/cupertino.dart';
import 'package:homey/widgets/my_color.dart';

class MyCard extends StatelessWidget {
  final Widget child;
  const MyCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: textFieldColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: textFieldColor, width: 1)
      ),
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}
