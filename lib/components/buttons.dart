import 'package:flutter/material.dart';

import '../constents/constents.dart';

class ButtonThatUsedIcon extends StatelessWidget {
  final String title, asset;
  final Color color;
  const ButtonThatUsedIcon(
      {Key? key, required this.color, required this.title, required this.asset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        height: 50,
        width: 400,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image(
                image: AssetImage(asset),
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  final String title;
  final Color color;
  // ignore: prefer_typing_uninitialized_variables
  final textColor;
  const SimpleButton(
      {Key? key, required this.color, required this.title, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        height: 50,
        width: 400,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: themeColor, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(color: textColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
