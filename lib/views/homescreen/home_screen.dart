import 'package:swiggy/consts/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = "249,Ramrajatala,Bakultala,Santragachi,Howrah-711104";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.heightBox,
              Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 245, 52, 38),
                  ),
                  10.widthBox,
                  "Home".text.size(20).bold.black.make(),
                ],
              ).box.margin(EdgeInsets.only(left: 10)).make(),
              DropdownButton<String>(
                // dropdownColor: theme.cardColor,
                value: dropdownValue,
                items: <String>[
                  "249,Ramrajatala,Bakultala,Santragachi,Howrah-711104",
                  "Kolkata",
                  "Howrah"
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    onTap: () {
                      print(value);
                    },
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 14,
                        color: Vx.gray500,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ).box.margin(EdgeInsets.only(left: 10)).make(),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: Color.fromARGB(255, 243, 220, 152),
                ),
                alignment: Alignment.center,
                height: 60,
                // color: Color.fromARGB(255, 243, 220, 152),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    filled: true,
                    // fillColor: Color.fromARGB(255, 243, 220, 152),
                    hintText: "Search for dishes, groceries, etc.....",
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                    helperStyle: TextStyle(color: Vx.gray500),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.search,
                          // color: Color.fromARGB(255, 245, 52, 38),
                        ).box.padding(EdgeInsets.all(10)).make(),
                        "|".text.size(20).color(Vx.gray500).make(),
                        Icon(
                          Icons.mic,
                          color: Color.fromARGB(255, 245, 52, 38),
                        ).box.padding(EdgeInsets.all(10)).make(),
                      ],
                    ),
                  ),
                ),
              ),
              10.heightBox,
              Expanded(
                child: SingleChildScrollView(
                  // scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.amberAccent,
                        padding: EdgeInsets.all(12),
                        child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: homepics1stpart.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 8,
                                    crossAxisSpacing: 8,
                                    mainAxisExtent: 120),
                            itemBuilder: (context, index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    homepics1stpart[index],
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.fill,
                                  ),
                                  10.heightBox,
                                  hometitle1stpart[index]
                                      .text
                                      .fontFamily(customfont)
                                      .color(Colors.black)
                                      .align(TextAlign.center)
                                      .make(),
                                ],
                              )
                                  .box
                                  .color(Vx.gray200)
                                  .rounded
                                  .outerShadowSm
                                  .clip(Clip.antiAlias)
                                  .make();
                            }),
                      ),
                      15.heightBox,
                      VxSwiper.builder(
                          aspectRatio: 16 / 9,
                          autoPlay: true,
                          height: 240,
                          viewportFraction: 0.9,
                          // enlargeCenterPage: true,
                          itemCount: discountimages.length,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              discountimages[index],
                              width: 460,
                              fit: BoxFit.fill,
                            )
                                .box
                                .clip(Clip.antiAlias)
                                .rounded
                                .margin(EdgeInsets.symmetric(horizontal: 8))
                                .make();
                          }),
                      50.heightBox,
                      Container(
                        width: context.screenWidth,
                        height: 60,
                        // color: Colors.amber,
                        child: Column(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.remove,
                                  color: Vx.gray300,
                                  size: 50,
                                ),
                                "DISCOVER SWIGGY"
                                    .text
                                    .fontFamily(customfont)
                                    .color(Vx.gray400)
                                    .size(30)
                                    .makeCentered(),
                                Icon(
                                  Icons.remove,
                                  color: Vx.gray300,
                                  size: 50,
                                ),
                              ],
                            ),
                            // 25.heightBox,
                            // Container(
                            //   // color: Colors.amberAccent,
                            //   padding: EdgeInsets.all(12),
                            //   child: GridView.builder(
                            //       shrinkWrap: true,
                            //       itemCount: discoverimages.length,
                            //       gridDelegate:
                            //           SliverGridDelegateWithFixedCrossAxisCount(
                            //               crossAxisCount: 1,
                            //               mainAxisSpacing: 8,
                            //               crossAxisSpacing: 8,
                            //               mainAxisExtent: 350),
                            //       itemBuilder: (context, index) {
                            //         return Image.asset(
                            //           discoverimages[index],
                            //           width: 320,
                            //           height: 320,
                            //           fit: BoxFit.fill,
                            //         )
                            //             .box
                            //             .rounded
                            //             .margin(EdgeInsets.all(8))
                            //             // .color(Vx.gray200)

                            //             // .outerShadowSm
                            //             .clip(Clip.antiAlias)
                            //             .make();
                            //       }),
                            // ),
                          ],
                        ),
                      ),
                      25.heightBox,
                      Container(
                        // color: Colors.amberAccent,
                        padding: EdgeInsets.all(12),
                        child: GridView.builder(
                            shrinkWrap: true,
                            itemCount: discoverimages.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    mainAxisSpacing: 8,
                                    crossAxisSpacing: 8,
                                    mainAxisExtent: 350),
                            itemBuilder: (context, index) {
                              return Image.asset(
                                discoverimages[index],
                                width: 320,
                                height: 320,
                                fit: BoxFit.fill,
                              )
                                  .box
                                  .rounded
                                  .margin(EdgeInsets.all(8))
                                  // .color(Vx.gray200)

                                  // .outerShadowSm
                                  .clip(Clip.antiAlias)
                                  .make();
                            }),
                      ),
                      20.heightBox,
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: context.screenWidth,
                        height: 280,
                        // color: Colors.amberAccent,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Live"
                                .text
                                .fontFamily(customfont)
                                .extraBold
                                .color(Vx.gray400)
                                .size(80)
                                .make(),
                            "it up!"
                                .text
                                .extraBold
                                .color(Vx.gray400)
                                .size(80)
                                .make(),
                            20.heightBox,
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                "Crafted with"
                                    .text
                                    .color(Vx.gray300)
                                    .size(17)
                                    .make(),
                                5.widthBox,
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                5.widthBox,
                                "in Bengaluru, India"
                                    .text
                                    .size(17)
                                    .color(Vx.gray300)
                                    .make()
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
