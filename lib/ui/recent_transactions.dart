import 'package:flutter/material.dart';

class RecentTransactionsPage extends StatelessWidget {
  const RecentTransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RecentTransactionsView();
  }
}

class RecentTransactionsView extends StatefulWidget {
  const RecentTransactionsView({Key? key}) : super(key: key);

  @override
  _RecentTransactionsViewState createState() => _RecentTransactionsViewState();
}

class _RecentTransactionsViewState extends State<RecentTransactionsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Activity"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.help),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Your Balance",
                      style:  TextStyle(
                        fontSize: 22,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "\$3.60",
                      style: TextStyle(
                        fontSize: 34,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          width: double.infinity,
                          height: 60,
                          margin: const EdgeInsets.only(bottom: 10),
                          alignment: FractionalOffset.center,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.attach_money,
                                color: Colors.white,
                                size: 40,
                              ),
                              Text('CASH OUT',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24)),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "PAYMENT SCHEDULED: 9/24",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(26),
              width: double.infinity,
              color: Colors.black12,
              child: const Text(
                "Posted",
                style: TextStyle(fontSize: 20, color: Colors.black38),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text("UberX", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                      Text("\$3.60", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text("Sep 19, 10:13 PM", style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
                      Text("\$3.60", style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
