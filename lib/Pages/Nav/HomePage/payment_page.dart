import 'package:flutter/material.dart';
import 'package:food/Pages/Nav/navPage.dart';
import 'package:provider/provider.dart';

import '../../../Models/cart_model.dart';
import '../../../Models/user_model.dart';
import '../../../Providers/user_provider.dart';
import '../../../const.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isDelivery = true;
  @override
  Widget build(BuildContext context) {
    Cart cart = Provider.of<Cart>(context, listen: false);
    User user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      backgroundColor: backgroundDefaultColor,
      appBar: AppBar(
        title: const Text('Payment'),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Delivery',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Payment Method',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffF47B0A),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.credit_card,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text('Card')
                              ],
                            ),
                            value: user.paymentMethod == 0 ? true : false,
                            onChanged: (value) {
                              setState(() {
                                user.paymentMethod = 0;
                              });
                            },
                          ),
                          const Divider(),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Row(children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffEB4796),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.money_off_sharp,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text('Bank Account')
                            ]),
                            value: user.paymentMethod == 1 ? true : false,
                            onChanged: (value) {
                              setState(() {
                                user.paymentMethod = 1;
                              });
                            },
                          ),
                          const Divider(),
                          CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Row(children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff0038FF),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.padding,
                                    color: Color.fromARGB(255, 17, 13, 13),
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text('PayPal')
                            ]),
                            value: user.paymentMethod == 2 ? true : false,
                            onChanged: (value) {
                              setState(() {
                                user.paymentMethod = 2;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Delivery method.',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text('Delivery'),
                          value: isDelivery ? true : false,
                          onChanged: (value) {
                            setState(() {
                              isDelivery = true;
                              user.optionDelivery = 0;
                            });
                          },
                        ),
                        const Divider(),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text('Pick up'),
                          value: isDelivery ? false : true,
                          onChanged: (value) {
                            setState(() {
                              isDelivery = false;
                              user.optionDelivery = 1;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total:',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      cart.getTotal().toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 50,
          width: 250,
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  title: const Text(
                    'Please Note',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  content: Container(
                    height: 160,
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ListView.separated(
                            itemCount: cart.listCartFood.length,
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemBuilder: (context, index) {
                              return const ListTile(
                                title: Text(
                                  'DELIVERY TO MAINLAND',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                                subtitle: Text(
                                  'N1000 - N2000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NavPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryOrange,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Proceed'),
                      ),
                    )
                  ],
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Proceed to payment',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
