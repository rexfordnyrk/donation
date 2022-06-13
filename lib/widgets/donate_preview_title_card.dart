import 'package:flutter/material.dart';

class PreviewTitleCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      shadowColor: Colors.black.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.withOpacity(0.2),
              width: MediaQuery.of(context).size.width / 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "assets/images/fresh-fruits.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Fresh Fruits for Improving Children...",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 21),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
