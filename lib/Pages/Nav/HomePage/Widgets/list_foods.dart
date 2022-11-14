import 'package:flutter/material.dart';
import 'package:food/Pages/Nav/HomePage/food_detail_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Database/database.dart';

class ListFoods extends StatelessWidget {
  const ListFoods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: listFood.length,
        separatorBuilder: (context, index) => const SizedBox(width: 1),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailPage(food: listFood[index]),
                ),
              );
            },
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 25,
                  child: Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 90,
                          ),
                          SizedBox(
                            width: 120,
                            child: Text(
                              listFood[index].name,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.allerta(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'R\$ ${listFood[index].price}',
                            style: GoogleFonts.allerta(
                                textStyle: const TextStyle(
                              fontSize: 17,
                              color: Color(0xffFA4A0C),
                              fontWeight: FontWeight.bold,
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    listFood[index].image,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
