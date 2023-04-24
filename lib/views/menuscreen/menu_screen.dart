import 'package:swiggy/consts/const.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
                    style: TextStyle(fontSize: 14, color: Vx.gray500),
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
                  hintText: "Search for dishes, resturants, etc.....",
                  hintStyle: TextStyle(fontSize: 18),
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
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    20.heightBox,
                    VxSwiper.builder(
                        // aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 230,
                        viewportFraction: 0.946,

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

                    //******** Top rated SEction ************/

                    20.heightBox,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Top rated near you"
                              .text
                              .black
                              .bold
                              .size(20)
                              .make()
                              .box
                              .padding(EdgeInsets.only(left: 7))
                              .make(),
                          20.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                topratedpics.length,
                                (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                          topratedpics[index],
                                          width: 150,
                                          height: 170,
                                          fit: BoxFit.fill,
                                        )
                                            .box
                                            .clip(Clip.antiAlias)
                                            .rounded
                                            .make(),
                                        Positioned(
                                          bottom: 140,
                                          left: 125,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    10.heightBox,
                                    topratedheadings[index]
                                        .text
                                        .black
                                        .bold
                                        // .fontFamily(semibold)
                                        // .color(darkFontGrey)
                                        .make()
                                        .box
                                        .padding(EdgeInsets.only(left: 2))
                                        .make(),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.stars,
                                          color: Colors.green,
                                          size: 17,
                                        ),
                                        3.widthBox,
                                        Container(
                                          // width: 150,
                                          // height: 30,
                                          child: Text(
                                            "4.2",
                                            style: TextStyle(
                                                fontSize: 12,
                                                // fontFamily: poisontype,
                                                color: Color.fromRGBO(
                                                    30, 32, 34, 1)),
                                          ),
                                        ),
                                        3.widthBox,
                                        Icon(
                                          Icons.circle,
                                          size: 5,
                                        ),
                                        3.widthBox,
                                        Container(
                                          child: Text(
                                            "35 mins",
                                            style: TextStyle(
                                                fontSize: 12,
                                                // fontFamily: poisontype,
                                                color: Color.fromRGBO(
                                                    30, 32, 34, 1)),
                                          ),
                                        ),
                                      ],
                                    )
                                        .box
                                        .padding(EdgeInsets.only(left: 2))
                                        .make(),
                                    "Chat,sweets,...."
                                        .text
                                        .color(Vx.gray500)
                                        .size(10)
                                        // .fontFamily(semibold)
                                        // .color(darkFontGrey)
                                        .make()
                                        .box
                                        .padding(EdgeInsets.only(left: 2))
                                        .make(),
                                  ],
                                )
                                    .box
                                    // .color(Color.fromARGB(255, 235, 210, 136))
                                    .margin(EdgeInsets.symmetric(horizontal: 4))
                                    .rounded
                                    .make(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //******** Menu section 1st list********** */
                    20.heightBox,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Arpan, Whats on your mind ?"
                              .text
                              .black
                              .bold
                              .size(20)
                              .make()
                              .box
                              .padding(EdgeInsets.only(left: 7))
                              .make(),
                          20.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                foodpart1pics.length,
                                (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      foodpart1pics[index],
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.fill,
                                    )
                                        .box
                                        .clip(Clip.antiAlias)
                                        .roundedFull
                                        .make(),
                                    10.heightBox,
                                    foodpart1title[index]
                                        .text
                                        .black

                                        // .fontFamily(semibold)
                                        // .color(darkFontGrey)
                                        .make()
                                        .box
                                        .padding(EdgeInsets.only(left: 2))
                                        .make(),
                                  ],
                                )
                                    .box
                                    // .color(Color.fromARGB(255, 235, 210, 136))
                                    .margin(EdgeInsets.symmetric(horizontal: 4))
                                    .rounded
                                    .make(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //********** Menu section 2nd list************** */
                    10.heightBox,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                foodpart2pics.length,
                                (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      foodpart2pics[index],
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.fill,
                                    )
                                        .box
                                        .clip(Clip.antiAlias)
                                        .roundedFull
                                        .make(),
                                    10.heightBox,
                                    foodpart2title[index]
                                        .text
                                        .black

                                        // .fontFamily(semibold)
                                        // .color(darkFontGrey)
                                        .make()
                                        .box
                                        .padding(EdgeInsets.only(left: 2))
                                        .make(),
                                  ],
                                )
                                    .box
                                    // .color(Color.fromARGB(255, 235, 210, 136))
                                    .margin(EdgeInsets.symmetric(horizontal: 4))
                                    .rounded
                                    .make(),
                              ),
                            ),
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
    ));
  }
}
