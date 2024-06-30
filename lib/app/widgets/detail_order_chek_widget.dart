import 'package:flutter/material.dart';

class DetailOrderChekWidget extends StatefulWidget {
  const DetailOrderChekWidget({
    super.key,
    required this.title,
    required this.color,
  });

  final String title;
  final Color color;
  @override
  State<DetailOrderChekWidget> createState() => _DetailOrderChekWidgetState();
}

class _DetailOrderChekWidgetState extends State<DetailOrderChekWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                border: Border.all(color: widget.color, width: 4),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        const SizedBox(width: 10),
        Text(widget.title,
            style: Theme.of(context)
                .textTheme
                .titleMedium),
      ],
    );
  }
}
