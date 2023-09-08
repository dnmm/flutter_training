import 'package:flutter/material.dart';

void main() {
  runApp(const order_rating());
}

class order_rating extends StatelessWidget {
  const order_rating({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          titleTextStyle: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white),
        ),
      ),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Order Rate'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10),
                child: Column(
                  children: <Widget>[
                    _orderIDContainerView(),
                    _buildUserRatingView(),
                    _buildRestaurantRatingView(),
                    _buildRatingBoxAndButtonView(context)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRatingBoxAndButtonView(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 300,
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            minLines: 6,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your comments',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(onPressed: () {}, child: const Text('Rate')),
        ),
      ],
    );
  }

  Widget _buildRestaurantRatingView() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Row(
            children: [
              Container(
                width: 100,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: const Text(
                  'Restaurant',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 160,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber.withAlpha(50),
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber.withAlpha(50),
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber.withAlpha(50),
                    size: 40.0,
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            // _ratingBar(_ratingBarMode),
            const SizedBox(height: 20.0),
            const Text(
              'Rating : 2.0',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Divider(
            thickness: 1.5,
            indent: 130,
            endIndent: 130,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildUserRatingView() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Row(
            children: [
              Container(
                width: 100,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: const Text(
                  'User',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 160,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber.withAlpha(50),
                    size: 40.0,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber.withAlpha(50),
                    size: 40.0,
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            // _ratingBar(_ratingBarMode),
            const SizedBox(height: 2.0),
            Text(
              'Rating : 3.0',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Divider(
            thickness: 1,
            indent: 130,
            endIndent: 130,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _orderIDContainerView() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60.0,
            height: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.greenAccent,
            ),
            child: Column(
              children: const [
                Text(
                  'Order ID',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '5', // '${orderResponse.id}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget _ratingBar(int mode) {
  //  // switch (mode) {
  //     //case 1:
  //      // return RatingBar.builder(
  //       //  initialRating: _initialRating,
  //        // minRating: 1,
  //         //direction: _isVertical ? Axis.vertical {Key? key}: Axis.horizontal,
  //         //allowHalfRating, super(key: key): true,
  //         unratedColor: Colors.amber.withAlpha(50),
  //         itemCount: 5,
  //         itemSize: 50.0,
  //         itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
  //         itemBuilder: (context, _) => Icon(
  //           _selectedIcon ?? Icons.star,
  //           color: Colors.amber,
  //         ),
  //         onRatingUpdate: (rating) {
  //           setState(() {
  //             _rating = rating;
  //           });
  //         },
  //         updateOnDrag: true,
  //       );

  //     case 2:
  //       return RatingBar.builder(
  //         initialRating: _initialRating,
  //         direction: _isVertical ? Axis.vertical : Axis.horizontal,
  //         itemCount: 5,
  //         itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
  //         itemBuilder: (context, index) {
  //           switch (index) {
  //             case 0:
  //               return const Icon(
  //                 Icons.sentiment_very_dissatisfied,
  //                 color: Colors.red,
  //               );
  //             case 1:
  //               return const Icon(
  //                 Icons.sentiment_dissatisfied,
  //                 color: Colors.redAccent,
  //               );
  //             case 2:
  //               return const Icon(
  //                 Icons.sentiment_neutral,
  //                 color: Colors.amber,
  //               );
  //             case 3:
  //               return const Icon(
  //                 Icons.sentiment_satisfied,
  //                 color: Colors.lightGreen,
  //               );
  //             case 4:
  //               return const Icon(
  //                 Icons.sentiment_very_satisfied,
  //                 color: Colors.green,
  //               );
  //             default:
  //               return Container();
  //           }
  //         },
  //         onRatingUpdate: (rating) {
  //           setState(() {
  //             _rating = rating;
  //           });
  //         },
  //         updateOnDrag: true,
  //       );
  //     default:
  //       return Container();
  //   }
}
