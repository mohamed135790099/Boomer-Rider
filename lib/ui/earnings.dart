import 'package:flutter/material.dart';

class EarningsPage extends StatelessWidget {
  const EarningsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EarningsView();
  }
}

class EarningsView extends StatefulWidget {
  const EarningsView({Key? key}) : super(key: key);

  @override
  _EarningsViewState createState() => _EarningsViewState();
}

const kExpandedHeight = 300.0;

class _EarningsViewState extends State<EarningsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 560,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: ()=> Navigator.pop(context),
                            icon: const Icon(
                              Icons.keyboard_backspace,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Earnings",
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: const Icon(
                          Icons.help,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "This week",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "\$3.60",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 44,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 320,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 11,
                        offset: Offset(3.0, 4.0))
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: ListTile(
                        onTap: () =>
                            Navigator.pushNamed(context, "/earnings_details"),
                        title: const Text("Earning Details",
                            style: TextStyle(fontSize: 20)),
                        subtitle: Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text("Sep 17 - Sep 24",
                                style: TextStyle(fontSize: 16))),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.lightbulb_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        trailing: const Icon(Icons.chevron_right,
                            color: Colors.black, size: 20),
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: ListTile(
                        onTap: () =>
                            Navigator.pushNamed(context, "/recent_transations"),
                        title: const Text("Recent transactions",
                            style: TextStyle(fontSize: 20)),
                        subtitle: Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text("\$3.60 balance",
                                style: TextStyle(fontSize: 16))),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.lightbulb_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        trailing: const Icon(Icons.chevron_right,
                            color: Colors.black, size: 20),
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: ListTile(
                        onTap: () =>
                            Navigator.pushNamed(context, "/promotions"),
                        title:
                            const Text("Promotions", style:  TextStyle(fontSize: 20)),
                        subtitle: Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text("See what's available",
                                style: TextStyle(fontSize: 16))),
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.lightbulb_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        trailing: const Icon(Icons.chevron_right,
                            color: Colors.black, size: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
