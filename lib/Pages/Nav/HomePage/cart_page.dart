import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food/Models/cart_model.dart';
import 'package:food/Pages/Nav/HomePage/checkout_page.dart';
import 'package:food/const.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Cart cart = Provider.of<Cart>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundDefaultColor,
      appBar: AppBar(
        title: const Text('Cart'),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.swipe,
                color: Colors.grey,
              ),
              Text('swipe on an item to delete'),
            ],
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: size.height * 0.78,
              child: Padding(
                padding: const EdgeInsets.all(60),
                child: ListView.separated(
                  itemCount: cart.listCartFood.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Slidable(
                      key: const ValueKey(0),
                      startActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        dismissible: DismissiblePane(onDismissed: () {}),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              setState(() {
                                cart.listCartFood
                                    .remove(cart.listCartFood[index]);
                              });
                            },
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Image.asset(
                                  cart.listCartFood[index].image,
                                  scale: 2,
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          cart.listCartFood[index].name,
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          (double.parse(cart.listCartFood[index]
                                                      .price) *
                                                  cart.listCartFood[index]
                                                      .quantity)
                                              .toStringAsFixed(2),
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: secondaryOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      right: 20,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        decoration: BoxDecoration(
                                          color: secondaryOrange,
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if (cart.listCartFood[index]
                                                          .quantity !=
                                                      1) {
                                                    cart.listCartFood[index]
                                                        .quantity -= 1;
                                                  }
                                                });
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Text(
                                                cart.listCartFood[index]
                                                    .quantity
                                                    .toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  cart.listCartFood[index]
                                                      .quantity++;
                                                });
                                              },
                                              child: const Text(
                                                '+',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 50,
          width: 250,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckOutPage(),
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
              'Complete Order',
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
