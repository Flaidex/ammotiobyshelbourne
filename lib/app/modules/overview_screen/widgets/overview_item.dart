import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OverviewItem extends StatelessWidget {
  final Color bgColor;
  final String imageSrc;
  final String label;
  final String price;
  final String dateTime;
  final Function()? onPressed;
  const OverviewItem(
    this.bgColor,
    this.imageSrc,
    this.dateTime,
    this.label,
    this.price,
    this.onPressed, {
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (context) => _body(context, Get.height * 0.25, Get.width * 0.4),
      landscape: (context) =>
          _body(context, Get.height * 0.45, Get.width * 0.2),
    );
  }

//body
  Widget _body(BuildContext context, double height, double width) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
          boxShadow: const [
            Constants.boxShadow,
          ],
        ),
        child: LayoutBuilder(builder: (ctx, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.25,
                width: constraints.maxHeight * 0.25,
                child: Image(
                  image: AssetImage(imageSrc),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.18,
                width: constraints.maxWidth,
                child: Center(
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Text(
                          label,
                          style: Get.textTheme.bodyLarge?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.15,
                width: constraints.maxWidth,
                child: Center(
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Text(
                          price,
                          style: Get.textTheme.bodyLarge?.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.09,
                width: constraints.maxWidth,
                child: Center(
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Text(
                          dateTime,
                          style: Get.textTheme.bodySmall?.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.04,
              ),
              Container(
                height: constraints.maxHeight * 0.15,
                width: constraints.maxWidth * 0.6,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        'View all',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
