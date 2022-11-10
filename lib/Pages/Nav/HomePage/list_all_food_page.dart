import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food/Database/database.dart';
import 'package:food/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../Models/user_model.dart';
import '../../../Providers/user_provider.dart';

class AllFoodPage extends StatefulWidget {
  const AllFoodPage({super.key});

  @override
  State<AllFoodPage> createState() => _AllFoodPageState();
}

class _AllFoodPageState extends State<AllFoodPage> {
  User? user;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    user = Provider.of<UserProvider>(context).getUser;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundDefaultColor,
      appBar: AppBar(
        title: Text('Found ${listFood.length} results'),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: size.height * 0.6,
            width: size.width,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Stack(
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
                                  listFood[index].name,
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
                                'R\$ ${listFood[index].price}',
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
                        listFood[index].image,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Text('Fala comigo')
        ],
      ),
    );
  }
}
