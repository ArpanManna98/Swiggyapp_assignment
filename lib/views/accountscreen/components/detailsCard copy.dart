import 'package:swiggy/consts/const.dart';

Widget detailsCard({width, String? count, String? title}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.bold.black.size(16).make(),
      5.heightBox,
      title!.text.black.make(),
    ],
  )
      .box
      .color(Color.fromARGB(255, 230, 251, 255))
      .rounded
      .width(width)
      .height(80)
      .padding(EdgeInsets.all(4))
      .make();
}
