import 'package:flutter/material.dart';
import 'package:fruits_app/features/dashboard/view/component/custom_nav_bar.dart';
import 'package:fruits_app/features/dashboard/view/pages/cart_page.dart';
import 'package:fruits_app/features/dashboard/view/pages/favorites_page.dart';
import 'package:fruits_app/features/dashboard/view/pages/home_page.dart';
import 'package:fruits_app/features/dashboard/view/pages/more_page.dart';
import 'package:fruits_app/features/dashboard/view/pages/orders_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);
  final PageController pageController = PageController();
  final List<Map<String, String>> items = [
    {"icon": "assets/images/Vector.png", "label": "Home"},
    {"icon": "assets/images/Icon.png", "label": "Orders"},
    {"icon": "assets/images/Vector2.png", "label": "Basket"},
    {"icon": "assets/images/Icon2.png", "label": "Favorites"},
    {"icon": "assets/images/Vector3.png", "label": "More"},
  ];

  @override
  void dispose() {
    selectedIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) => selectedIndex.value = index,
        children: [
          HomePage(),
          OrdersPage(),
          CartPage(),
          FavoritesPage(),
          MorePage(),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: selectedIndex,
        items: items,
        pageController: pageController,
      ),
    );
  }
}
