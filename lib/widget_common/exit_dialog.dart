import 'package:swiggy/consts/const.dart';
import 'package:flutter/services.dart';
import 'package:swiggy/widget_common/our_button.dart';

Widget exitDialog(context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        "Confirm".text.bold.size(18).color(Colors.black).make(),
        Divider(),
        10.heightBox,
        "Are you sure want to exit?"
            .text
            .bold
            .size(18)
            .color(Colors.black)
            .make(),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ourButton(
              color: Colors.greenAccent,
              textColor: Colors.white,
              title: "Yes",
              onPress: () {
                SystemNavigator.pop();
              },
            ),
            ourButton(
              color: Colors.red,
              textColor: Colors.white,
              title: "No",
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ],
    ).box.color(Vx.gray50).padding(EdgeInsets.all(12)).roundedSM.make(),
  );
}
