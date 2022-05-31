import 'package:flutter/material.dart';

class EarningsDetailsPage extends StatelessWidget {
  const EarningsDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EarningsDetailsView();
  }
}

class EarningsDetailsView extends StatefulWidget {
  const EarningsDetailsView({Key? key}) : super(key: key);

  @override
  _EarningsDetailsViewState createState() => _EarningsDetailsViewState();
}

class _EarningsDetailsViewState extends State<EarningsDetailsView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Weekly"),
        ),
        body: ListView(
          children: const <Widget>[
          ],
        ));
  }
}
