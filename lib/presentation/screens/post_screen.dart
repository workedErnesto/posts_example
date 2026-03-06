import 'package:flutter/material.dart';
import 'package:posts/core/constants/colors.dart';
import 'package:posts/presentation/widgets/widgets.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: PostAppBar(),
      body: PostListView(),
    );
  }
}
