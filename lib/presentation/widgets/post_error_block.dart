import 'package:flutter/material.dart';
import 'package:posts/core/constants/colors.dart';

class PostErrorBlock extends StatelessWidget {
  const PostErrorBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "что-то пошло не так",
            style: TextStyle(fontSize: 24, color: titleColor),
          ),
          Text(
            "повторите попытку чуть позже",
            style: TextStyle(fontSize: 18, color: textColor),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "попробовать еще раз",
              style: TextStyle(fontSize: 18, color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
