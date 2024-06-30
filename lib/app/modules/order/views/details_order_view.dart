import 'package:flutter/material.dart';

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
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('ارسال' ' :', style: Theme.of(context).textTheme.titleMedium),
        SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedIndex == 0) {
                      selectedIndex = 1;
                    } else {
                      selectedIndex = 0;
                    }
                  });
                },
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: selectedIndex == 0 ? Colors.red : Colors.black,
                          width: selectedIndex == 0 ? 4 : 0),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Text('پیک',
                  style: selectedIndex == 0
                      ? Theme.of(context).textTheme.titleMedium
                      : Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.grey)),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedIndex == 1) {
                    selectedIndex = 0;
                  } else {
                    selectedIndex = 1;
                  }
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: selectedIndex == 1 ? Colors.red : Colors.black,
                        width: selectedIndex == 1 ? 4 : 0),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(width: 8),
            Text('پست',
                style: selectedIndex == 1
                    ? Theme.of(context).textTheme.titleMedium
                    : Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
