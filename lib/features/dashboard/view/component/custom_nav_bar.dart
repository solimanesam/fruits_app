import 'package:flutter/material.dart';
import 'package:fruits_app/core/theme/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.items,
    required this.pageController,
  });

  final ValueNotifier<int> selectedIndex;
  final List<Map<String, String>> items;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
