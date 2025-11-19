import 'package:flutter/material.dart';
import 'package:fruits_app/features/dashboard/view/component/favorite_item_widget.dart';
import 'package:fruits_app/features/dashboard/view/component/second_appbar.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondAppBar(title: 'Favorite'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return FavoriteItemWidget();
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 20);
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
