
import 'package:flutter/material.dart';

class TitelOrderWidget extends StatelessWidget {
  const TitelOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ثبت سفارش جدید',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 20),
        Text(
          'برای ثبت سفارش جدید لازم هست تمامی موارد پایین را کامل کنید',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}