import 'package:flutter/material.dart';

class WatchMovieView extends StatelessWidget {
  const WatchMovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text("Watch Movie")),
      ),
    );
  }
}