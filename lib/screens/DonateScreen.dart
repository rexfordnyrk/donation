import 'package:donation/widgets/donate_preview_title_card.dart';
import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.black,
          ),
        ),
        title: const Align(
          child: Text("Donate",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.white,
        actions: const [
          SizedBox(
            width: 55,
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        // height: 200,
        margin: const EdgeInsets.only(left: 26.0, right: 26.0, top: 15),
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            PreviewTitleCard(),
            Container(
                margin: const EdgeInsets.only(top: 15),
                alignment: Alignment.centerLeft,
                child: const Text("Select Amount",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              shrinkWrap: true,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    border: selected == 1
                        ? null
                        : Border.all(color: Colors.grey.shade300, width: 2),
                    borderRadius: BorderRadius.circular(2),
                    color: selected == 1 ? Colors.white : Colors.transparent,
                    boxShadow: selected == 1
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ]
                        : [],
                  ),
                  child: const Align(
                    child: Text(
                      "\$50",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    border: selected == 2
                        ? null
                        : Border.all(color: Colors.grey.shade300, width: 2),
                    borderRadius: BorderRadius.circular(2),
                    color: selected == 2 ? Colors.white : Colors.transparent,
                    boxShadow: selected == 2
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ]
                        : [],
                  ),
                  child: const Align(
                    child: Text(
                      "\$100",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    border: selected == 3
                        ? null
                        : Border.all(color: Colors.grey.shade300, width: 2),
                    borderRadius: BorderRadius.circular(2),
                    color: selected == 3 ? Colors.white : Colors.transparent,
                    boxShadow: selected == 3
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ]
                        : [],
                  ),
                  child: const Align(
                    child: Text(
                      "\$200",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                    border: selected == 4
                        ? null
                        : Border.all(color: Colors.grey.shade300, width: 2),
                    borderRadius: BorderRadius.circular(2),
                    color: selected == 4 ? Colors.white : Colors.transparent,
                    boxShadow: selected == 4
                        ? [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 10), // changes position of shadow
                            ),
                          ]
                        : [],
                  ),
                  child: const Align(
                    child: Text(
                      "\$250",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Flexible(
                  child: Divider(
                    color: Colors.black45,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(alignment: Alignment.center, child: Text("or")),
                ),
                Flexible(
                  child: Divider(
                    color: Colors.black45,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Price Manually',
                hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 14),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide.none),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                fillColor: Colors.grey.shade200,
                filled: true,
              ),
              cursorColor: Colors.grey,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
/*
            Container(
                margin: const EdgeInsets.only(top: 15),
                alignment: Alignment.centerLeft,
                child: const Text("Select Payment",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ))),
*/
            MaterialButton(
              onPressed: () {},
              elevation: 2,
              minWidth: double.maxFinite,
              color: Colors.green,
              child: const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Pay & Confirm",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
            // DonationItemCard(),
          ],
        ),
      ),
    );
  }
}
