import 'package:flutter/material.dart';

class DonationItemCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 20,
      shadowColor: Colors.black.withOpacity(0.6),
      child: Container(
        height: MediaQuery.of(context).size.height / 4.5,
        padding:
        const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: double.maxFinite,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              margin: EdgeInsets.only(right: 10),
              // height: double.maxFinite,
              child: Image.asset(
                "assets/images/student_bag.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Help Children Get Better Education",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, bottom: 4),
                    child: Text(
                      "20 Days Left",
                      style:
                      TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                    child: Row(
                      children: const [
                        Text(
                          "\$4000",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          " Raised",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.grey,
                               fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: LinearProgressIndicator(
                            minHeight: 6,
                            value: 0.45,
                            color: Colors.green,
                            backgroundColor: Colors.grey.shade200,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "45%",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
