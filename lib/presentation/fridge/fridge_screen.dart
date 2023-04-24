import 'package:flutter/material.dart';
import 'package:refri_mobile/components/refri_app_bar.dart';
import 'package:refri_mobile/components/sliver_fixed_header_delegate.dart';
import 'package:refri_mobile/constants/icon.dart';
import 'package:refri_mobile/presentation/fridge/components/expire_list.dart';
import 'package:refri_mobile/presentation/fridge/components/ingredient_list.dart';
import 'package:refri_mobile/presentation/fridge/components/nutrient_info.dart';

class FridgeScreen extends StatelessWidget {
  const FridgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: RefreshIndicator(
        onRefresh: () => Future.delayed(const Duration(seconds: 1)),
        child: CustomScrollView(
          slivers: [
            RefriAppBar(logoPath: IconAsset.logoFridgeIcon.path, theme: "dark"),
            SliverPersistentHeader(
              delegate: SliverFixedHeaderDelegate(
                minHeight: 0,
                maxHeight: 310,
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      ExpireList(),
                      NutrientInfo(),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(child: IngredientList()),
          ],
        ),
      ),
    );
  }
}
