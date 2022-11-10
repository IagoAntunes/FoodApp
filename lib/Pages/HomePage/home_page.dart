import 'package:flutter/material.dart';
import 'package:food/const.dart';
import 'Widgets/app_bar.dart';
import 'Widgets/search_widget.dart';
import 'Widgets/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerSearch = TextEditingController();
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
          ],
        ),
      ),
    );
  }
}
