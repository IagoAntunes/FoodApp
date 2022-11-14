import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Models/user_model.dart';

class ListFavorites extends StatelessWidget {
  const ListFavorites({
    super.key,
    required this.size,
    required this.user,
  });

  final Size size;
  final User? user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.8,
      child: GridView.builder(
        itemCount: user!.appFood.listFavorites.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          childAspectRatio: 0.85,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
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
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 100,
                          ),
                          SizedBox(
                            width: 120,
                            child: Text(
                              user!.appFood.listFavorites[index].name,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.allerta(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'R\$ ${user!.appFood.listFavorites[index].price}',
                            style: GoogleFonts.allerta(
                              textStyle: const TextStyle(
                                fontSize: 17,
                                color: Color(0xffFA4A0C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    user!.appFood.listFavorites[index].image,
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
