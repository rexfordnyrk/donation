import 'package:flutter/material.dart';

class DetailProgressCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shadowColor: Colors.black.withOpacity(0.4),
      child: Container(
        padding:
        const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Statistic Progress",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "8 Hours Left",
                      style:
                      TextStyle(color: Colors.black54, fontWeight: FontWeight.w500,fontSize: 15),
                    )),
              ],
            ),
            SizedBox(height: 8,),
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
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "\$540900",
                  textAlign: TextAlign.start,
                  style: TextStyle( fontWeight: FontWeight.bold, fontSize: 19),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    "Raised",
                    textAlign: TextAlign.start,
                    style: TextStyle( color: Colors.black54, fontSize: 12),
                  ),
                ),
                Expanded(
                    child: Text(
                      "-\$1200",
                      textAlign: TextAlign.end,
                      style:
                      TextStyle(color: Colors.black54, fontWeight: FontWeight.bold,fontSize: 15),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
