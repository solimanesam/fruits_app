import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';
import 'package:fruits_app/features/dashboard/view/component/dashboard_appbar.dart';
import 'package:fruits_app/features/dashboard/view/pages/home_page.dart';

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
    {"icon": "assets/images/Icon.png", "label": "Search"},
    {"icon": "assets/images/Vector2.png", "label": "Cart"},
    {"icon": "assets/images/Icon2.png", "label": "Profile"},
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
      appBar: DashboardAppBar(),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) => selectedIndex.value = index,
        children: [HomePage(), Text(''), Text(''), Text(''), Text('')],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: EdgeInsets.all(10),
        child: ValueListenableBuilder<int>(
          valueListenable: selectedIndex,
          builder: (context, currentIndex, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(items.length, (index) {
                bool isSelected = index == currentIndex;
                return GestureDetector(
                  onTap: () {
                    print(index);
                    selectedIndex.value = index;
                    pageController.jumpToPage(index);
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    padding: EdgeInsets.symmetric(
                      horizontal: isSelected ? 12 : 0,
                      vertical: 8,
                    ),
                    decoration: isSelected
                        ? BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          )
                        : null,
                    child: Row(
                      children: [
                        Image.asset(
                          items[index]["icon"]!,
                          width: 24,
                          height: 24,
                          color: isSelected ? AppColors.primary : Colors.white,
                        ),
                        if (isSelected) SizedBox(width: 8),
                        if (isSelected)
                          Text(
                            items[index]["label"]!,
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
