import 'package:flutter/cupertino.dart';

class MultiSwitch extends StatefulWidget {
  const MultiSwitch({super.key});

  @override
  State<MultiSwitch> createState() => _MultiSwitchState();
}

class _MultiSwitchState extends State<MultiSwitch> {
  bool _lights = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _lights,
      onChanged: (bool value) {
        setState(
          () {
            _lights = value;
          },
        );
      },
    );
  }
}
