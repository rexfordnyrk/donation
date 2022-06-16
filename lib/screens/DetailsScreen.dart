import 'dart:ffi';

import 'package:donation/screens/DonateScreen.dart';
import 'package:donation/widgets/detail_progress_card.dart';
import 'package:donation/widgets/main_details.dart';
import 'package:donation/widgets/organiser.dart';
import 'package:flutter/material.dart';

import '../widgets/back_button.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: CustomBackButton(),
        title: const Align(
          child: Text("Details",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.more_vert,
              size: 25,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 26.0, right: 26.0, top: 15),
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MainDetails(),
              DetailProgressCard(),
              Container(
                  margin: const EdgeInsets.only(top: 15),
                  alignment: Alignment.centerLeft,
                  child: const Text("Organized by",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold))),
              Organizer(),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DonateScreen()));
                },
                elevation: 2,
                minWidth: double.maxFinite,
                color: Colors.green,
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Donate Now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
