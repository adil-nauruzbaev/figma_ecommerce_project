import 'package:figma_ecommerce_project/common/app_colors/app_colors.dart';
import 'package:figma_ecommerce_project/common/app_custom_icons.dart/svg_icons.dart';
import 'package:flutter/material.dart';


class GeolocationWidget extends StatelessWidget {
  const GeolocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.grey[50],
                elevation: 0,
              ),
              child: svgGeolocation,
            ),
            const Text(
              'Astana, KZ',
              style: TextStyle(
                fontFamily: 'MarkPronormal400',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.buttonBarColor,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.grey[50],
                elevation: 0,
              ),
              child: svgDown,
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: Colors.grey[50],
            elevation: 0,
          ),
          child: svgFilter,
        ),
      ],
    );
  }
}
