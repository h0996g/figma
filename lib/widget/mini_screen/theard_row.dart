import 'package:figma/controllers/main_controller.dart';
import 'package:figma/model/list_item.dart';
import 'package:figma/widget/mini_screen/labeled_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:figma/components/size.dart';
import 'package:get/get.dart';

class ThreardRow extends StatelessWidget {
  final MealItem item;
  const ThreardRow({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // MainController mainController = Get.find<MainController>();

    double fontSize = MediaQueryValues(context).fontSize * 0.11;
    double iconSizeHeight1 = MediaQueryValues(context).iconSizeHeight * 1.3;
    double iconSizeWidth1 = MediaQueryValues(context).iconSizeWidth;
    double screenSizeWidthOnly1 = MediaQueryValues(context).onlyminiScreenWidth;
    double containerWidth = screenSizeWidthOnly1;
    double containerHeight = MediaQueryValues(context).height;
    return _buildDateTimeContainer3(
        fontSize: fontSize,
        quantity: item.quantity!,
        title: item.name,
        subtitle: item.subtitle!,
        price: item.price!,
        isPcs: item.isPcs!,
        oldPrice: item.oldPrice,
        discount: item.discount,
        isFrezze: item.isFrezze,
        height: containerHeight,
        width: containerWidth);
    //  _buildResponsiveRow3(
    //   screenSizeWidthOnly1: screenSizeWidthOnly1,
    //   screenSizeHeight: containerHeight,
    //   quantity: item.quantity!,
    //   title: item.name,
    //   subtitle: item.subtitle!,
    //   isPcs: item.isPcs!,
    //   price: item.price!,
    //   oldPrice: item.oldPrice,
    //   discount: item.discount,
    //   isFrezze: item.isFrezze,
    // );
  }

  Widget _buildCustomSlidableAction(
      {required String assetPath,
      required double iconSizeWidth,
      required double iconSizeHeight,
      required MealItem item,
      required MainController mainController}) {
    return CustomSlidableAction(
      onPressed: (context) {
        // Your action here
        mainController.updateFrezzeStatus(item.id!, true);
      },
      padding: EdgeInsets.zero,
      backgroundColor: const Color.fromRGBO(155, 81, 224, 1),
      child: SvgPicture.asset(
        assetPath,
        fit: BoxFit.contain,
        width: iconSizeWidth,
        height: iconSizeHeight * 2,
      ),
    );
  }

  // Widget _buildResponsiveRow3({
  //   required double screenSizeWidthOnly1,
  //   required double screenSizeHeight,
  //   required String quantity,
  //   required String title,
  //   required String subtitle,
  //   required String price,
  //   required bool isPcs,
  //   String? oldPrice,
  //   String? discount,
  //   bool? isFrezze,
  // }) {

  //   return Row(
  //     children: [
  //       Expanded(
  //           child: _buildDateTimeContainer3(, fontSize, quantity,
  //               title, subtitle, price, isPcs, oldPrice, discount, isFrezze)),
  //     ],
  //   );
  // }

  Widget _buildDateTimeContainer3(
      {required double height,
      required double width,
      required double fontSize,
      required String quantity,
      required String title,
      required String subtitle,
      required String price,
      required bool isPcs,
      String? oldPrice,
      String? discount,
      bool? isFrezze}) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        dragDismissible: true,
        // extentRatio: 0.25,
        openThreshold: 0.2,
        children: [
          CustomSlidableAction(
            autoClose: true,
            borderRadius: const BorderRadius.all(Radius.circular(3)),
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromRGBO(235, 87, 87, 1),
            onPressed: (context) {
              // mainController.deleteItem(id: item.id!);
            },
            child: SvgPicture.asset('assets/icons/mini_screen/Slide.svg',
                width: fontSize, height: fontSize * 2 * 0.7),
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const BehindMotion(),
        extentRatio: 0.45, // Adjust this value as needed
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item.isFrezze == true
                    ? CustomSlidableAction(
                        onPressed: (context) {
                          // Your action here
                          Get.find<MainController>()
                              .updateFrezzeStatus(item.id!, !item.isFrezze!);
                        },
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color.fromRGBO(155, 81, 224, 1),
                        child: SvgPicture.asset(
                          'assets/icons/mini_screen/freezOf.svg',
                          // fit: BoxFit.contain,
                          width: fontSize,
                          height: fontSize * 2 * 0.7,
                        ),
                      )
                    : CustomSlidableAction(
                        onPressed: (context) {
                          // Your action here
                          Get.find<MainController>()
                              .updateFrezzeStatus(item.id!, !item.isFrezze!);
                        },
                        padding: EdgeInsets.zero,
                        backgroundColor: const Color.fromRGBO(155, 81, 224, 1),
                        child: SvgPicture.asset(
                          'assets/icons/mini_screen/Slide-1.svg',
                          fit: BoxFit.contain,
                          width: fontSize,
                          height: fontSize * 2 * 0.7,
                        ),
                      ),
                _buildCustomSlidableAction(
                    assetPath: 'assets/icons/mini_screen/Slide-2.svg',
                    iconSizeHeight: fontSize * 0.7,
                    iconSizeWidth: fontSize,
                    item: item,
                    mainController: Get.find<MainController>()),
                _buildCustomSlidableAction(
                    assetPath: 'assets/icons/mini_screen/Slide-3.svg',
                    iconSizeHeight: fontSize * 0.7,
                    iconSizeWidth: fontSize,
                    item: item,
                    mainController: Get.find<MainController>()),
              ],
            ),
          ),
        ],
      ),
      child: Container(
          height: height * 0.059,
          width: double.infinity,
          decoration: BoxDecoration(
            color: isFrezze != true
                ? Colors.grey[100]!.withOpacity(0.7)
                : const Color.fromRGBO(224, 236, 252, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: height * 0.059 * 0.25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // const SizedBox(
              //   width: 10,
              // ),
              LabeledBorder(
                isFrezze: isFrezze!,
                bottomLabel: isPcs ? 'pcs' : 'kg',
                rightLabel: 'X',
                height: height * 0.045,
                width: width * 0.16,
                child: Text(quantity,
                    style: TextStyle(
                        fontSize: fontSize, fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: width * 0.02),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(subtitle,
                            style: TextStyle(
                                fontSize: fontSize * 0.8,
                                color: Colors.grey.shade700)),
                        Row(
                          children: [
                            if (discount != null)
                              // Text(
                              //   discount,
                              //   style: TextStyle(
                              //       fontSize: fontSize * 0.8,
                              //       color: Colors.red,
                              //       fontWeight: FontWeight.bold),
                              // ),

                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    discount,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: fontSize * 0.8,
                                        // fontSize: fontSize,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            if (oldPrice != null)
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(oldPrice,
                                    style: TextStyle(
                                        fontSize: fontSize * 0.8,
                                        decoration:
                                            TextDecoration.lineThrough)),
                              ),
                            Text(price,
                                style: TextStyle(
                                    fontSize: fontSize,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
