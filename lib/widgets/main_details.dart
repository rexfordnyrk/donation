import 'package:avatar_stack/avatar_stack.dart';
import 'package:flutter/material.dart';

class MainDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 4.2,
            width: double.maxFinite,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/images/fresh-fruits.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Fresh Fruits for Improving Children Nutrition",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 4,
                child: AvatarStack(
                  height: 40,
                  avatars: [
                    for (var n = 0; n < 4; n++)
                      NetworkImage('https://i.pravatar.cc/150?img=$n'),
                  ],
                ),
              ),
              const Flexible(
                fit: FlexFit.tight,
                flex: 6,
                child: Text(
                  "120+ People Donated",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black54, fontSize: 14,),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Good nutrition will help children grow and develop and even save them from the threat of deadly diseases. Every help you give is a package of hope for them",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.normal, color: Colors.black54, fontSize: 14,),
            ),
          ),
        ],
      ),
    );
  }
}
