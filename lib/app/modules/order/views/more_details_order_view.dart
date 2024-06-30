import 'package:flutter/material.dart';

class MoreDetailsOrderView extends StatefulWidget {
  const MoreDetailsOrderView({super.key});

  @override
  State<MoreDetailsOrderView> createState() => _MoreDetailsOrderViewState();
}

class _MoreDetailsOrderViewState extends State<MoreDetailsOrderView> {
  RangeValues _values = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'جزيیات بیشتر',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            const CustomerTyp(),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            WeightOfGoods(values: _values),
            const SizedBox(height: 20),
            RangeSlider(
              values: _values,
              max: 100,
              min: 0,
              divisions: 10,
              activeColor: Colors.red,
              labels: RangeLabels(
                  '${_values.start.toInt()}', '${_values.end.toInt()}'),
              onChanged: (value) {
                setState(() {
                  _values = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WeightOfGoods extends StatelessWidget {
  const WeightOfGoods({
    super.key,
    required RangeValues values,
  }) : _values = values;

  final RangeValues _values;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        'وزن کالا',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      Text.rich(TextSpan(
        text: ' ${_values.start.toInt()}'
            ' کیلو تا'
            ' ${_values.end.toInt()}'
            ' کیلو',
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: Colors.grey),
      )),
    ]);
  }
}

class CustomerTyp extends StatefulWidget {
  const CustomerTyp({super.key});

  @override
  State<CustomerTyp> createState() => _CustomerTypState();
}

class _CustomerTypState extends State<CustomerTyp> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'نوع مشتری' ' :',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (selectedIndex == 0) {
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
              Text('همه',
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
            Text('حضوری',
                style: selectedIndex == 1
                    ? Theme.of(context).textTheme.titleMedium
                    : Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.grey)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedIndex == 2) {
                  } else {
                    selectedIndex = 2;
                  }
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: selectedIndex == 2 ? Colors.red : Colors.black,
                        width: selectedIndex == 2 ? 4 : 0),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(width: 8),
            Text('آنلاین',
                style: selectedIndex == 2
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
