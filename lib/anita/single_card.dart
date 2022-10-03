import 'package:flutter/material.dart';
import 'package:flutter_application_1/Rahul/radio%20button/radiowithrow.dart';

class SingleleCard extends StatelessWidget {
  const SingleleCard({Key? key}) : super(key: key);

  static const String _title = 'Multiple Card';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Orders'),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.logout),
              ),
            ]),
        body: Center(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 150, left: 55),
                  child: SizedBox(
                    width: 400,
                    height: 210,
                    child: Card(
                      elevation: 8,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.lightGreen,
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    width: 70,
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade400,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade400,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade400,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade400,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade400,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Status: Completed',
                                      style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Item Details',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Pizza, Burger, Samosa',
                                      style: TextStyle(
                                        //fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      'Total: 5000 ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 100, right: 10),
                                  child: Text(
                                    'Rate ',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
