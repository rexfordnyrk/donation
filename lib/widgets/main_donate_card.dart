import 'package:flutter/material.dart';

class MainDonateCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.black.withOpacity(0.6),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.7,
        padding:
        const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              width: double.maxFinite,
              child: Image.asset(
                "assets/images/fresh-fruits.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Fresh Fruits for Improving Child...",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ),
            Row(
              children: [
                Flexible(
                    child: LinearProgressIndicator(
                      minHeight: 6,
                      value: 0.9,
                      color: Colors.green,
                      backgroundColor: Colors.grey.shade200,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "80%",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Donation Raised",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      Text(
                        "USD 540900",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ],
                  ),
                  const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "8 Hours Left",
                        style:
                        TextStyle(color: Colors.grey, fontSize: 16),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
