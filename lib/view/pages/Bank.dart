import 'package:flutter/material.dart';
import 'Bank_name.dart';
import 'Pay.dart';

class Bank extends StatefulWidget {
  const Bank({super.key});

  @override
  State<Bank> createState() => _Bankstate();
}

class _Bankstate extends State<Bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 236, 247),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Bank Info',
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

          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'CHOOSE BANK',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: ElevatedButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 13, horizontal: 100)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                child: const Text('Oromia Bank',
                    style: TextStyle(color: Colors.grey)),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      builder: (BuildContext context) {
                        return DraggableScrollableSheet(
                          initialChildSize: 0.6,
                          builder: (BuildContext context,
                              ScrollController scrollController) {
                            return SingleChildScrollView(
                              controller: scrollController,
                              child: Container(
                                color: Colors.white,
                                padding:
                                    const EdgeInsets.only(left: 20, right: 100),
                                child: TextField(
                                  onTap: () {
                                    // showSearch(context: context, delegate: Searching());
                                  },
                                  textAlignVertical: TextAlignVertical.top,
                                  cursorWidth: 1,
                                  keyboardType: TextInputType.none,
                                  style: const TextStyle(fontSize: 11),
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    hintStyle: const TextStyle(
                                        color: Colors.black54, fontSize: 14),
                                    prefixIcon: const Icon(
                                      Icons.search_outlined,
                                      color: Colors.black54,
                                    ),
                                    contentPadding: const EdgeInsets.all(12.0),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black12),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      });
                },
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'select bank name',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Bank_name()));
                  },
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  '0 Dollars',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // BANK CHOICE textfield

          const SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
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
