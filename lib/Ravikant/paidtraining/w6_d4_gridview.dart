import 'package:flutter/material.dart';
//import 'package:path/path.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
        ),
        //   body: GridView.count(
        //     crossAxisCount: 2, // Number of columns in the grid
        //     children: List.generate(6, (index) {
        //       return Center(
        //         child: GridTile(
        //           child: Container(
        //             color: Colors.blue[100 * (index % 9)],
        //             child: Center(
        //               child: Text(
        //                 'Item $index',
        //                 style: TextStyle(fontSize: 20),
        //               ),
        //             ),
        //           ),
        //         ),
        //       );
        //     }),
        //
        //  ),
        body: GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    'https://e1.pxfuel.com/desktop-wallpaper/664/468/desktop-wallpaper-beautiful-world-best-pic-in-the-world-best-most-beautiful-places-on-earth.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: 200,
            );
          },
        ),
      ),
    );
  }
}
