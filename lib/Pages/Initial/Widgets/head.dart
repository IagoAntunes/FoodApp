import 'package:flutter/material.dart';

import 'circle_box_widget.dart';
import 'title_widget.dart';

class Head extends StatelessWidget {
  const Head({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 40, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [CircleBoxWidget(), TitleWidget()],
      ),
    );
  }
}
