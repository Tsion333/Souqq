import 'package:flutter/material.dart';
import 'Payment_success.dart';
import 'Pay.dart';

class Cash extends StatefulWidget {
  const Cash({super.key});

  @override
  State<Cash> createState() => _CashState();
}

class _CashState extends State<Cash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 236, 247),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Cash - COD',
          style: TextStyle(
              color: Color.fromARGB(255, 168, 167, 167), fontSize: 19),
        ),
        //icon on appbar
        leading: IconButton(
          color: Colors.blueGrey,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Pay()));
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
      body: SingleChildScrollView(
          child: Center(
        child: Column(children: [
          Image.asset(
            'assets/credit-card.png',
            height: 290,
            width: 290,
          ),
          //image end
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pay when you receive your products. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const success()));
                },
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 120)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 235, 163, 9))),
                child: const Text(
                  'Order Now',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          )
        ]),
      )),
    );
  }
}
