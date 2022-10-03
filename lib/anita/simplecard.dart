import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  static const String _title = 'Order Id';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 50),
      // child: Center(
      child: Card(
        elevation: 80,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: SizedBox(
            width: 400,
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            margin: const EdgeInsets.only(left: 15),
                            color: Colors.greenAccent,
                            width: 55.0,
                            height: 30.0,
                            child: Column(
                              children: [
                                Text(
                                  'Order ID',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Resturant: ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                              // textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ]),
                ),
                // Column(
                //  children: [
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    'Status: delivered',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                    'Delivery Time:2022-08-17 17:05:00,000Z',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: Container(
                      //margin: const EdgeInsets.only(left: 15),
                      // color: Colors.black38,
                      width: 70.0,
                      height: 25.0,

                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Browse',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black26,
                        border: Border.all(
                          width: 1,
                          color: Colors.black38,
                        ),
                      ),
                    )),
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 250),
                  child: Text(
                    'Order Details',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                    // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
            // ],
          ),
        ),
      ),

      // ),
    );

    //  );
  }
}
