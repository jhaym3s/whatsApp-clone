import 'package:flutter/material.dart';


class ImagePage extends StatelessWidget {
  static const routeName = '/imagePage';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as List<String>;
    final name = args[0];
    final image = args[1];
    return Scaffold(
      body: Container(
        child: Text(name),
        height: 400,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image))
        ),
      ),
    );
  }
}
