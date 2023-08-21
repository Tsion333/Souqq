import 'package:flutter/material.dart';
import 'package:souq/view/pages/Bank.dart';
import 'checkout.dart';
import 'CreditCard.dart';
import 'Cash.dart';
// import 'package:souq/view/pages/profile_pages.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 236, 247),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Select Payment',
            style: TextStyle(
                color: Color.fromARGB(255, 168, 167, 167), fontSize: 19),
          ),
          //icon on appbar
          leading: IconButton(
            color: Colors.blueGrey,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Checkout()));
            },
          ),
          actions: [
            IconButton(
              color: Colors.blueGrey,
              icon: const Icon(Icons.sort),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ],
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              sliver: SliverFixedExtentList(
                itemExtent: 2000,
                delegate: SliverChildListDelegate([
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: w,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Payment Method',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  height: 3,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 10,
                          ),
                          Row(mainAxisSize: MainAxisSize.max, children: [
                            SizedBox(
                              width: w / 2.1,
                              height: 190,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Credit()));
                                },
                                child: const Card(
                                  color: Colors.white,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.credit_card,
                                        color: Color.fromARGB(255, 18, 21, 183),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Credit Card',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: w / 2.2,
                              height: 190,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Bank()));
                                },
                                child: const Card(
                                  color: Colors.white,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.house_outlined,
                                        color: Color.fromARGB(255, 18, 21, 183),
                                      ),
                                      SizedBox(height: 7),
                                      Text(
                                        'Bank',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                          Row(mainAxisSize: MainAxisSize.max, children: [
                            SizedBox(
                              width: w / 2.1,
                              height: 190,
                              child: InkWell(
                                onTap: () {},
                                child: const Card(
                                  color: Colors.white,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.paypal_outlined,
                                        color: Color.fromARGB(255, 18, 21, 183),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Paypal',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: w / 2.2,
                              height: 190,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Cash()));
                                },
                                child: const Card(
                                  color: Colors.white,
                                  margin: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.attach_money_outlined,
                                        color: Color.fromARGB(255, 18, 21, 183),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Cash',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ]),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
