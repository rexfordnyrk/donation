import 'dart:ffi';

import 'package:donation/widgets/category_menu.dart';
import 'package:donation/widgets/category_menu_item.dart';
import 'package:donation/widgets/main_donate_card.dart';
import 'package:donation/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("Rexford.",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.notifications,
              size: 25,
              color: Colors.blueGrey,
            ),
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const SearchBar(),
            MainDonateCard(),
            Container(
                margin: const EdgeInsets.only(top: 15),
                alignment: Alignment.centerLeft,
                child: const Text("Categories",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            CategoryMenu(),
            // CategoryMenuItem(),
            // CategoryMenuItem(path: "assets/images/ic_edu.png", title: "Education",),
            // CategoryMenuItem(path: "assets/images/ic_pill.png", title: "Medical",),
            // // CategoryMenuItem(path: "assets/images/ic_food.png", title: "Food",),
            // // CategoryMenuItem(path: "assets/images/ic_accommodation.png", title: "Accommodation",),
          ],
        ),
      ),
    );
  }
}
