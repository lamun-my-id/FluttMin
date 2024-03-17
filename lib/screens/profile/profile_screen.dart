import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutteradmin/components/wrapper_component.dart';
import 'package:flutteradmin/utils/extensions/build_context_extension.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = context.width();
    return WrapperComponent(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.margin(),
          ),
          child: Column(
            children: [
              Container(
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 1),
                      color: Colors.black.withOpacity(0.12),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 360,
                      width: width,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 160,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.grey[200]!,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              height: 300,
                              width: width,
                              color: Colors.lightBlue[200]!,
                            ),
                          ),
                        ].reversed.toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: width,
                      child: const Text(
                        "Fulan bin Fulan",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: width,
                      child: Text(
                        "System Administrator",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600]!,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: width,
                      child: Row(
                        children: [
                          const Expanded(
                            child: SizedBox(),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                            ),
                            // height: 8,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(1, 1),
                                  color: Colors.black.withOpacity(0.12),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Row(
                                    children: [
                                      const Text('259'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Posts',
                                        style: TextStyle(
                                          color: Colors.grey[400]!,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                VerticalDivider(
                                  color: Colors.grey[400]!,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Row(
                                    children: [
                                      const Text('129K'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Followers',
                                        style: TextStyle(
                                          color: Colors.grey[400]!,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                VerticalDivider(
                                  color: Colors.grey[400]!,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Row(
                                    children: [
                                      const Text('2K'),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Following',
                                        style: TextStyle(
                                          color: Colors.grey[400]!,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width,
                      height: 30,
                      child: Text(
                        "About Me",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600]!,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      constraints: const BoxConstraints(
                        maxWidth: 720,
                      ),
                      width: width,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque posuere fermentum urna, eu condimentum mauris tempus ut. Donec fermentum blandit aliquet. Etiam dictum dapibus ultricies. Sed vel aliquet libero. Nunc a augue fermentum, pharetra ligula sed, aliquam lacus.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[600]!,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width,
                      height: 30,
                      child: Text(
                        "Follow me on",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600]!,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: width,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icons.facebook_outlined,
                          Icons.mail_outline,
                          Icons.message_outlined
                        ].map((e) {
                          return SizedBox(
                            width: 40,
                            child: Icon(
                              e,
                              color: Colors.grey[600],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
