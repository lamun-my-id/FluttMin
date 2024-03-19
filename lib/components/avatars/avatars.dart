import 'package:flutter/material.dart';

class Avatars extends StatefulWidget {
  final double? size;
  final ProfileModel value;
  final bool? showStatusActivity;
  const Avatars({
    super.key,
    this.size,
    required this.value,
    this.showStatusActivity,
  });

  @override
  State<Avatars> createState() => _AvatarsState();
}

class _AvatarsState extends State<Avatars> {
  @override
  Widget build(BuildContext context) {
    double size = widget.size ?? 40;
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(size),
            ),
            child: Image.network(
              widget.value.photo ?? "",
              errorBuilder: (_, __, ___) {
                return const SizedBox();
              },
            ),
          ),
          if (widget.showStatusActivity != null)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: size * 35 / 100,
                height: size * 35 / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size),
                  color: widget.showStatusActivity ?? false
                      ? Colors.green
                      : Colors.grey[400],
                  border: Border.all(
                    width: size * 5 / 100,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class ProfileModel {
  String id;
  String? name;
  String? photo;
  DateTime? lastActive;

  ProfileModel({required this.id, this.name, this.photo});
}
