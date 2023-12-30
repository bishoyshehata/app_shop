// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ViewImage extends StatelessWidget {
//   const ViewImage({Key? key, required this.image, this.height, this.width})
//       : super(key: key);
//   final String image;
//   final double? height;
//   final double? width;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         showDialog(
//             context: context,
//             builder: (contex) {
//               return PhotoView(
//                 onTapDown: (context, details, controllerValue) {
//                   Get.back();
//                 },
//                 basePosition: Alignment.center,
//                 enableRotation: true,
//                 imageProvider: CachedNetworkImageProvider(
//                   image,
//                 ),
//               );
//             });
//       },
//       child: ClipRRect(
//         clipBehavior: Clip.antiAlias,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(AppSizeHeight.s15),
//           topRight: Radius.circular(AppSizeHeight.s15),
//         ),
//         child: CachedNetworkImage(
//           height: height,
//           width: width,
//           imageUrl: image,
//           fit: BoxFit.cover,
//           errorWidget: (context, url, error) => Icon(
//               Icons.signal_wifi_statusbar_connected_no_internet_4_outlined,
//               size: AppSizeHeight.s50),
//         ),
//       ),
//     );
//   }
// }
