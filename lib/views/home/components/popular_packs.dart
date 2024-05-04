import 'package:flutter/material.dart';
import 'package:grocery/core/components/product_tile_square.dart';

import '../../../core/components/bundle_tile_square.dart';
import '../../../core/components/title_and_action_button.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';

class PopularPacks extends StatelessWidget {
  const PopularPacks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndActionButton(
          title: 'Sản phẩm nổi bật',
          onTap: () => Navigator.pushNamed(context, AppRoutes.popularItems),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: AppDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              // Dummy.bundles.length,
              Dummy.products.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: AppDefaults.padding),
                // child: BundleTileSquare(data: Dummy.bundles[index]),
                // child: ProductTileSquare(data: Dummy.products[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
