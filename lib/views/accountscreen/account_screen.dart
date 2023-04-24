import 'package:swiggy/consts/const.dart';
import 'package:swiggy/views/accountscreen/components/detailsCard%20copy.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: "Account ".text.semiBold.color(Vx.gray600).make(),
      ),
      // backgroundColor: Color.fromARGB(255, 245, 52, 38).withOpacity(0.3),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            //Edit button design

            // Align(
            //   alignment: Alignment.centerRight,
            //   child: Icon(
            //     Icons.logout,
            //     color: Colors.red,
            //   ),
            // ),

            //User profile detail section design
            15.heightBox,
            Row(
              children: [
                Icon(
                  Icons.perm_identity,
                  size: 50,
                ).box.roundedFull.white.clip(Clip.antiAlias).make(),
                10.widthBox,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Arpan Manna".text.black.bold.size(20).make(),
                      "+91-9123301349".text.color(Vx.gray700).make(),
                      "arpanmanna98@gmail.com".text.color(Vx.gray700).make(),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.green,
                    ).box.make(),
                    "Edit".text.color(Colors.green).bold.make(),
                  ],
                ),
                10.widthBox,

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout_rounded,
                      color: Color.fromARGB(255, 245, 52, 38),
                    ).box.make(),
                    "Log Out".text.color(Colors.red).bold.make(),
                  ],
                ),
                // OutlinedButton(
                //   onPressed: () {},
                //   child: "EDIT".text.extraBold.color(Colors.green).make(),
                //   style: OutlinedButton.styleFrom(
                //     side: BorderSide(
                //       color: Colors.green,
                //     ),
                //   ),
                // ),
                // 5.widthBox,
                // OutlinedButton(
                //   onPressed: () {},
                //   child: "Log Out".text.extraBold.color(Colors.red).make(),
                //   style: OutlinedButton.styleFrom(
                //     side: BorderSide(
                //       color: Colors.red,
                //     ),
                //   ),
                // ),
              ],
            ),

            // User cart, favitem, orders details widget buttons design

            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //cart's total item
                detailsCard(
                    count: "01",
                    title: "Items in Cart",
                    width: context.screenWidth / 3.4),

                detailsCard(
                    count: "05",
                    title: "Your Wishlist",
                    width: context.screenWidth / 3.4),
                detailsCard(
                    count: "03",
                    title: "Total Orders",
                    width: context.screenWidth / 3.4),
              ],
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  width: context.screenWidth,
                  height: context.screenHeight,
                  // color: Color.fromARGB(255, 243, 142, 142),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                      accountlistheadings.length,
                      (index) => Card(
                        elevation: 1,
                        color: Color.fromARGB(255, 230, 251, 255),
                        margin: EdgeInsets.all(5),
                        child: Container(
                          width: context.screenWidth,
                          height: 110,
                          // height: context.percentHeight * 13,
                          // height: context.screenHeight - 770,
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  accountlistheadings[index]
                                      .text
                                      .fontFamily(customfont)
                                      // .bold
                                      // .black
                                      .size(20)
                                      .make(),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                              15.heightBox,
                              accountlistsubheadings[index]
                                  .text
                                  .color(Vx.gray500)
                                  .make()
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
