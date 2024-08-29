import 'package:figma/model/list_item.dart';
import 'package:figma/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Widget itemAppBar(
//     String iconPath, String label, double iconSize, double fontSize) {
//   return MaterialButton(
//     onPressed: () {},
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         svgIconNavigationBar2(
//           path: iconPath,
//           color: Colors.black,
//           width: iconSize * 0.8,
//           height: iconSize * 0.8,
//           fit: BoxFit.cover,
//         ),
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: fontSize * 0.8,
//             fontWeight: FontWeight.w600,
//             color: Colors.black,
//           ),
//         ),
//       ],
//     ),
//   );
// }

Widget buildProductCard(MealItem product, double fontSize, double mediaHeight) {
  return Container(
      // color: Colors.red,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),

      // elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(3)),
            child: Image.asset(
              product.imageUrl!,
              fit: BoxFit.cover,
              width: double.infinity,
              // height: mediaHeight * 0.1
            ),
          ),
          Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize * 0.35,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${product.price}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize * 0.4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' DZD',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: fontSize * 0.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      )
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     ClipRRect(
      //       borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
      //       child: Image.asset(product.imageUrl!,
      //           fit: BoxFit.cover,
      //           width: double.infinity,
      //           height: mediaHeight * 0.15),
      //     ),
      //     Container(
      //       color: Colors.red,
      //       height: mediaHeight * 0.04,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Text(
      //             product.name,
      //             style: TextStyle(
      //               fontWeight: FontWeight.bold,
      //               fontSize: fontSize * 0.8,
      //             ),
      //             textAlign: TextAlign.center,
      //             maxLines: 2,
      //             overflow: TextOverflow.ellipsis,
      //           ),
      //
      //   Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 '${product.price}',
      //                 style: TextStyle(
      //                   color: Colors.black,
      //                   fontSize: fontSize * 0.9,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //               const Text(
      //                 ' DZD',
      //                 style: TextStyle(
      //                   color: Colors.grey,
      //                   fontSize: 14,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),

      );
}
