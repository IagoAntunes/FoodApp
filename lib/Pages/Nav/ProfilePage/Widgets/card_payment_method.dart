import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../Models/user_model.dart';
import '../../../../Providers/user_provider.dart';

class CardPaymentMethod extends StatefulWidget {
  const CardPaymentMethod({
    super.key,
  });

  @override
  State<CardPaymentMethod> createState() => _CardPaymentMethodState();
}

class _CardPaymentMethodState extends State<CardPaymentMethod> {
  User? user;
  @override
  void initState() {
    user = Provider.of<UserProvider>(context, listen: false).getUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  value: user!.paymentMethod == 0 ? true : false,
                  onChanged: (value) {
                    setState(() {
                      user!.paymentMethod = 0;
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
                  value: user!.paymentMethod == 1 ? true : false,
                  onChanged: (value) {
                    setState(() {
                      user!.paymentMethod = 1;
                      user!.paymentMethod = 1;
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
                  value: user!.paymentMethod == 2 ? true : false,
                  onChanged: (value) {
                    setState(() {
                      user!.paymentMethod = 2;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
