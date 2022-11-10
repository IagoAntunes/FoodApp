import 'package:flutter/material.dart';

import '../../../../const.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * 0.04,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              listCategories.forEach((element) {
                element.isSelected = false;
              });
              setState(() {
                listCategories[index].isSelected = true;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                border: listCategories[index].isSelected
                    ? const Border(
                        bottom: BorderSide(width: 3, color: Color(0xffFA4A0C)),
                      )
                    : null,
              ),
              child: Text(
                listCategories[index].name,
                style: TextStyle(
                  color: listCategories[index].isSelected
                      ? const Color(0xffFA4A0C)
                      : Colors.black,
                  fontSize: 17,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 40,
        ),
        itemCount: listCategories.length,
      ),
    );
  }
}
