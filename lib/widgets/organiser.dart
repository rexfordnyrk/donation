import 'package:flutter/material.dart';

class Organizer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            margin: const EdgeInsets.only(right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/images/student_bag.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      "Eats Foundation",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(
                        Icons.check_box_rounded,
                        color: Colors.blue,
                        size: 15,
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 4),
                  child: Text(
                    "Verified Organizer",
                    style:
                    TextStyle(color: Colors.green, fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
