import 'package:flutter/material.dart';
import 'package:posts/core/constants/colors.dart';

class PostAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: scaffoldColor,
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: const Text(
          "Posts",
          style: TextStyle(
            color: titleColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
