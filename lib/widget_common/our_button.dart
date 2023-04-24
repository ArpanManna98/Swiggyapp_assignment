import 'package:swiggy/consts/const.dart';

Widget ourButton({onPress, color, textColor, String? title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(12), backgroundColor: color),
      onPressed: onPress,
      child: title!.text.color(Colors.black).bold.make());
}
