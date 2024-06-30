import 'package:flutter/material.dart';

class SelectDetailOrderChekWidget extends StatefulWidget {
  const SelectDetailOrderChekWidget({
    super.key,
    required this.title,
    required this.color,
    required this.changeSelectedIndex,
  });
  final Function() changeSelectedIndex;

  final String title;
  final Color color;

  @override
  State<SelectDetailOrderChekWidget> createState() => _SelectDetailOrderChekWidgetState();
}

class _SelectDetailOrderChekWidgetState extends State<SelectDetailOrderChekWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            widget.changeSelectedIndex();
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                border: Border.all(color: widget.color, width: 0),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        const SizedBox(width: 10),
        Text(widget.title, style: Theme.of(context).textTheme.titleSmall!
                .copyWith(color: Colors.grey)),
      ],
    );
  }
}
