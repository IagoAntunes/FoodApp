import 'package:flutter/material.dart';
import 'package:food/Pages/Nav/HomePage/Widgets/title_widget.dart';
import 'package:food/Pages/Nav/HomePage/list_all_food_page.dart';
import 'package:food/const.dart';
import 'Widgets/app_bar.dart';
import 'Widgets/list_category.dart';
import 'Widgets/list_foods.dart';
import 'Widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController controllerSearch = TextEditingController();
    PageController _navPage = PageController(initialPage: 0);
    return Scaffold(
      appBar: const AppbarHomePage(),
      backgroundColor: backgroundDefaultColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(),
            SearchWidget(controllerSearch: controllerSearch),
            ListCategory(size: size),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllFoodPage(),
                  ),
                );
              },
              child: const Text(
                'See more',
                textAlign: TextAlign.right,
              ),
            ),
            const ListFoods()
          ],
        ),
      ),
    );
  }
}
