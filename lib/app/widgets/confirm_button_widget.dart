import 'package:flutter/material.dart';

class ConfirmButtonWidget extends StatelessWidget {
  const ConfirmButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {},
          child: Text(
            'تایید و ادامه',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          )),
    );
  }
}