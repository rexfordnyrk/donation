import 'package:flutter/material.dart';

import 'category_menu_item.dart';

class CategoryMenu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<CategoryMenu>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CategoryMenuItem(path: "assets/images/ic_edu.png", title: "Education", isSelected: true,),
          CategoryMenuItem(path: "assets/images/ic_pill.png", title: "Medical", isSelected: false,),
          CategoryMenuItem(path: "assets/images/ic_food.png", title: "Food", isSelected: false,),
          CategoryMenuItem(path: "assets/images/ic_accommodation.png", title: "Accommodation", isSelected: false,),
        ],
      ),
    );
  }
}