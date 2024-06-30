import 'package:flutter/material.dart';
import 'package:flutter_application_7/app/widgets/detail_order_chek_widget.dart';
import 'package:flutter_application_7/app/widgets/select_detail_order_chek_widget.dart';

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
      height: 265,
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
      children: [
        Text('نوع مشتری' ' :', style: Theme.of(context).textTheme.titleMedium),
        Expanded(
          child: SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  if (selectedIndex == index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: DetailOrderChekWidget(
                          title: index == 0
                              ? 'همه'
                              : index == 1
                                  ? 'حضوری'
                                  : 'آنلاین',
                          color: Colors.red),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SelectDetailOrderChekWidget(
                          title: index == 0
                              ? 'همه'
                              : index == 1
                                  ? 'حضوری'
                                  : 'آنلاین',
                          color: Colors.grey,
                          changeSelectedIndex: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          }),
                    );
                  }
                },
              )),
        ),
      ],
    );
  }
}
