import 'package:flutter/material.dart';

class PromotionsPage extends StatelessWidget {
  const PromotionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PromotionsView();
  }
}

class PromotionsView extends StatefulWidget {
  const PromotionsView({Key? key}) : super(key: key);

  @override
  _PromotionsViewState createState() => _PromotionsViewState();
}

class _PromotionsViewState extends State<PromotionsView> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Promotions"),
        ),
        body: ListView(
          children: const <Widget>[
          ],
        ));
  }
}
