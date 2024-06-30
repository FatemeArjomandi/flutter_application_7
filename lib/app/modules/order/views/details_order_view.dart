import 'package:flutter/material.dart';
import 'package:flutter_application_7/app/widgets/detail_order_chek_widget.dart';

import '../../../widgets/select_detail_order_chek_widget.dart';

class DetailsOrderView extends StatelessWidget {
  const DetailsOrderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 455,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'جزئیات',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'متن',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const DetailsText(),
            const SizedBox(height: 15),
            Text(
              'تعداد کالا',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            const NumbersOfGoods(),
            const SizedBox(height: 20),
            const SendingOder()
          ],
        ),
      ),
    );
  }
}

class NumbersOfGoods extends StatelessWidget {
  const NumbersOfGoods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 234, 235, 237),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          minLines: null,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
              hintText: '2345',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none),
        ),
      ),
    );
  }
}

class DetailsText extends StatelessWidget {
  const DetailsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 234, 235, 237),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          minLines: 2,
          maxLines: 5,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
              hintText: 'جزئیات سفارش',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none),
        ),
      ),
    );
  }
}

class SendingOder extends StatefulWidget {
  const SendingOder({super.key});

  @override
  State<SendingOder> createState() => _SendingOderState();
}

class _SendingOderState extends State<SendingOder> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ارسال' ' :', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(width: 20),
        Expanded(
          child: SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (_selectedIndex == index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: DetailOrderChekWidget(
                      title: index == 0 ? 'پیک' : 'پست',
                      color:  Colors.red 
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: SelectDetailOrderChekWidget(
                      title: index == 0 ? 'پیک' : 'پست',
                      color:  Colors.grey,
                      changeSelectedIndex: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
