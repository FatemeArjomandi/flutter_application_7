import 'package:flutter/material.dart';

class RulesOrderWidget extends StatefulWidget {
  const RulesOrderWidget({
    super.key,
  });

  @override
  State<RulesOrderWidget> createState() => _RulesOrderWidgetState();
}

class _RulesOrderWidgetState extends State<RulesOrderWidget> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              if (_selectedIndex == 0) {
                _selectedIndex = 1;
              } else {
                _selectedIndex = 0;
              }
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(color: Colors.grey)),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: ' قوانین و شرایط',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.blue),
              ),
              TextSpan(
                text: '  می پذیرم',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
