import 'package:flutter/material.dart';
import 'package:flutteradmin/components/wrapper_component.dart';

class BadegeScreen extends StatefulWidget {
  const BadegeScreen({super.key});

  @override
  State<BadegeScreen> createState() => _BadegeScreenState();
}

class _BadegeScreenState extends State<BadegeScreen> {
  @override
  Widget build(BuildContext context) {
    return WrapperComponent(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          children: [
            // Container(
            //   width: width,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     boxShadow: [
            //       BoxShadow(
            //         offset: const Offset(1, 1),
            //         color: Colors.black.withOpacity(0.12),
            //         blurRadius: 4,
            //       ),
            //     ],
            //   ),
            //   child: Column(
            //     children: [
            //       Container(
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 16,
            //         ),
            //         height: 50,
            //         width: width,
            //         alignment: Alignment.centerLeft,
            //         decoration: BoxDecoration(
            //           border: Border(
            //             bottom: BorderSide(
            //               color: Colors.grey[400]!,
            //             ),
            //           ),
            //         ),
            //         child: const Text(
            //           "Alerts Style 1",
            //           style: TextStyle(
            //             fontSize: 16,
            //             // color: Colors.grey[800]!,
            //           ),
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 16,
            //       ),
            //       Container(
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 16,
            //         ),
            //         width: width,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: List.generate(5, (index) {
            //                 return Padding(
            //                   padding: const EdgeInsets.only(
            //                     right: 16,
            //                   ),
            //                   child: Avatars(
            //                     size: 20 + (5 * (index + 1)),
            //                     value: ProfileModel(
            //                       id: "id",
            //                       name: "",
            //                       photo: "",
            //                     ),
            //                   ),
            //                 );
            //               }),
            //             ),
            //           ],
            //         ),
            //       ),
            //       const SizedBox(
            //         height: 16,
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
