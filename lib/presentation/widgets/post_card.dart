import 'package:flutter/material.dart';
import 'package:posts/core/constants/colors.dart';
import 'package:posts/domain/entity/post_entity.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});

  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: textColor.withOpacity(0.2)),
        borderRadius: BorderRadius.circular(16),
        color: cardColor,
      ),
      width: double.infinity,
      height: 220,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.title,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: titleColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              post.body,
              maxLines: 3,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(color: textColor.withOpacity(0.2)),
            Row(
              children: [
                Text(
                  'User #${post.userId}',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(backgroundColor: textColor, radius: 3),
                ),
                Text(
                  'Post #${post.id}',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
