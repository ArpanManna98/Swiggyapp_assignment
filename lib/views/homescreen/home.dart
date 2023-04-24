import 'package:swiggy/consts/const.dart';
import 'package:swiggy/controllers/home_controller.dart';
import 'package:swiggy/views/accountscreen/account_screen.dart';
import 'package:swiggy/views/cartscreen/cart_screen.dart';
import 'package:swiggy/views/homescreen/home_screen.dart';
import 'package:swiggy/views/menuscreen/menu_screen.dart';
import 'package:swiggy/views/ordertrackingscreen/ordertrack_screen.dart';
import 'package:swiggy/widget_common/exit_dialog.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.fastfood,
          ),
          label: "Foods"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          label: "Cart"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.delivery_dining,
          ),
          label: "Track Order"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: "Account"),
    ];

    var navBody = [
      HomeScreen(),
      MenuScreen(),
      CartScreen(),
      OrderTrackScreen(),
      AccountScreen(),
    ];
    return WillPopScope(
      onWillPop: () async {
        showDialog(
            context: context,
            builder: (context) => exitDialog(context),
            barrierDismissible: false);
        return false;
      },
      child: Scaffold(
        body: Column(
          children: [
            Obx(() => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value))),
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            items: navbarItem,
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: Colors.black,
            // selectedLabelStyle: TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ),
      ),
    );
  }
}
