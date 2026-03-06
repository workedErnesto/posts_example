import 'package:flutter/material.dart';

import 'package:posts/presentation/screens/post_screen.dart';

class PostsApp extends StatelessWidget {
  const PostsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: PostScreen());
  }
}
