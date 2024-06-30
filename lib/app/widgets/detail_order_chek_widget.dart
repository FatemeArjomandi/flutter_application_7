import 'package:flutter/material.dart';

class DetailOrderChekWidget extends StatefulWidget {
  DetailOrderChekWidget(
      {super.key, required this.title});
  var selectedIndex =0;
  String title = 'پیک';

  @override
  State<DetailOrderChekWidget> createState() => _DetailOrderChekWidgetState();
}

class _DetailOrderChekWidgetState extends State<DetailOrderChekWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (widget.selectedIndex == 0) {
                  widget.selectedIndex = 1;
                } else {
                  widget.selectedIndex = 0;
                }
              });
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          widget.selectedIndex == 0 ? Colors.red : Colors.black,
                      width: widget.selectedIndex == 0 ? 4 : 0),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Text(widget.title,
              style: widget.selectedIndex == 0
                  ? Theme.of(context).textTheme.titleMedium
                  : Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey)),
        ],
      ),
    );
  }
}
