import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Image image = const Image(
      image: NetworkImage(
          'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    );
    /*AssetImage assetImage = const AssetImage('assets/images/a.png');
    Image image = Image(image: assetImage);*/
    return Container(
      child: image,
    );
  }
}
