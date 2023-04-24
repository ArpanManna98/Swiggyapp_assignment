import 'package:swiggy/consts/const.dart';
import 'package:swiggy/widget_common/our_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: "Your Food Cart".text.semiBold.color(Vx.gray600).make(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    elevation: 0,
                    child: Row(
                      children: [
                        Image.asset(
                          discount2,
                          width: 100,
                          height: 100,
                          fit: BoxFit.fill,
                        ).box.clip(Clip.antiAlias).rounded.make(),
                        5.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Pizza".text.bold.size(16).make(),
                            5.heightBox,
                            Row(
                              children: [
                                "Quantity:"
                                    .text
                                    .color(Color.fromARGB(255, 120, 70, 235))
                                    .bold
                                    .make(),
                                "3"
                                    .text
                                    .color(Color.fromARGB(255, 120, 70, 235))
                                    .bold
                                    .make(),
                              ],
                            ),
                            5.heightBox,
                            Row(
                              children: [
                                "₹".text.color(Colors.redAccent).bold.make(),
                                "1200"
                                    .numCurrency
                                    // .numCurrencyWithLocale(locale: "hi_IN")
                                    .text
                                    .color(Colors.redAccent)
                                    .bold
                                    .make(),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                      ],
                    ),
                    // leading: Image.network("${data[index]["img"]}"),
                    // title: "${data[index]["title"]}"
                    //     .text
                    //     .fontFamily(semibold)
                    //     .size(16)
                    //     .make(),
                    // subtitle: Row(
                    //   children: [
                    //     "₹"
                    //         .text
                    //         .color(redColor)
                    //         .fontFamily(bold)
                    //         .make(),
                    //     "${data[index]["tprice"]}"
                    //         .numCurrency
                    //         // .numCurrencyWithLocale(locale: "hi_IN")
                    //         .text
                    //         .color(redColor)
                    //         .fontFamily(bold)
                    //         .make(),
                    //   ],
                    // ),
                    // trailing: IconButton(
                    //     onPressed: () {
                    //       FirestoresServices.deleteItems(
                    //           data[index].id);
                    //     },
                    //     icon: Icon(
                    //       Icons.delete,
                    //       color: redColor,
                    //     )),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Total Price".text.semiBold.color(Vx.gray600).make(),
              Row(
                children: [
                  "₹".text.color(Vx.gray500).semiBold.make(),
                  5.widthBox,
                  "1200"
                      .numCurrency

                      // .numCurrencyWithLocale(locale: "hi_IN")
                      .text
                      .color(Colors.redAccent)
                      .semiBold
                      .make(),
                ],
              ),
            ],
          )
              .box
              .padding(EdgeInsets.all(12))
              .color(Color.fromARGB(255, 248, 245, 85))
              .width(context.screenWidth - 60)
              .roundedSM
              .make(),
          10.heightBox,
          ourButton(
                  title: "Proceed to Payment",
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  onPress: () {})
              .box
              .width(context.screenWidth - 60)
              .make(),
        ],
      ),
    );
  }
}
