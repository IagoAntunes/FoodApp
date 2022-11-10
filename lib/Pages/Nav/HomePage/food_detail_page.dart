import 'package:flutter/material.dart';
import 'package:food/Models/food_model.dart';
import 'package:food/Models/user_model.dart';
import 'package:food/Providers/user_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../const.dart';

class FoodDetailPage extends StatefulWidget {
  FoodDetailPage({super.key, required this.food});
  FoodItem food;
  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundDefaultColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
              onPressed: () {
                setState(() {
                  User? user =
                      Provider.of<UserProvider>(context, listen: false).getUser;
                  widget.food.isFavorite = !widget.food.isFavorite;
                  if (widget.food.isFavorite == true) {
                    user!.appFood.listFavorites.add(widget.food);
                  } else {
                    user!.appFood.listFavorites.remove(widget.food);
                  }
                });
              },
              icon: Icon(
                widget.food.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_outline,
                color: widget.food.isFavorite ? secondaryOrange : Colors.black,
              ),
            ),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Center(
              child: Image.asset(
            widget.food.image,
            scale: 0.9,
          )),
          Text(
            widget.food.name,
            style: GoogleFonts.allerta(
              textStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            'R\$ ${widget.food.price}',
            style: GoogleFonts.allerta(
              textStyle: const TextStyle(
                fontSize: 17,
                color: Color(0xffFA4A0C),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Delivery Info',
                    style: GoogleFonts.allerta(
                      textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
                    style: GoogleFonts.allerta(
                      textStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  title: Text(
                    'Return policy',
                    style: GoogleFonts.allerta(
                      textStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                    style: GoogleFonts.allerta(
                      textStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                )
              ],
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Update',
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
