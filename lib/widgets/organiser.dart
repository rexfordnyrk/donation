import 'package:flutter/material.dart';

class Organizer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      const EdgeInsets.symmetric(vertical: 15),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: Colors.grey.withOpacity(0.2),
              width: MediaQuery.of(context).size.width / 6,
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                "assets/images/ic_eats_logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
            ),
          )
        ],
      ),
    );
  }
}
