import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../widgets/confirm_button_widget.dart';
import 'details_order_view.dart';
import 'more_details_order_view.dart';
import '../../../widgets/ruls_order_widget.dart';
import '../../../widgets/titel_order_widget.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 235, 237),
        appBar: AppBar(
          title: Text(
            'ثبت سفارش',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          leading: const Icon(
                Icons.clear,
                size: 30,
              ),
          
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children:const [
              SizedBox(height: 40),
              TitelOrderWidget(),
              SizedBox(height: 40),
              DetailsOrderView(),
              SizedBox(height: 40),
              MoreDetailsOrderView(),
              SizedBox(height: 40),
              RulesOrderWidget(),
              SizedBox(height: 40),
              ConfirmButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}


