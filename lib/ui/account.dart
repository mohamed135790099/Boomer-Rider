import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AccountView();
  }
}

class AccountView extends StatefulWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  _AccountViewState createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Account"),
        ),
        body: ListView(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text("Documents", style: TextStyle(fontSize: 20)),
              leading: const Icon(
                Icons.note,
                color: Colors.grey,
                size: 30,
              ),
              trailing:
                  const Icon(Icons.chevron_right, color: Colors.black, size: 20),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text("Payment", style: TextStyle(fontSize: 20)),
              leading: const Icon(
                Icons.credit_card,
                color: Colors.grey,
                size: 30,
              ),
              trailing:
                  const Icon(Icons.chevron_right, color: Colors.black, size: 20),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text("Perks", style: TextStyle(fontSize: 20)),
              leading: const Icon(
                Icons.favorite,
                color: Colors.grey,
                size: 30,
              ),
              trailing:
                  const Icon(Icons.chevron_right, color: Colors.black, size: 20),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text("Ensurance", style: TextStyle(fontSize: 20)),
              leading: const Icon(
                Icons.security,
                color: Colors.grey,
                size: 30,
              ),
              trailing:
                  const Icon(Icons.chevron_right, color: Colors.black, size: 20),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text("App Settings", style: TextStyle(fontSize: 20)),
              leading: const Icon(
                Icons.settings,
                color: Colors.grey,
                size: 30,
              ),
              trailing:
                  const Icon(Icons.chevron_right, color: Colors.black, size: 20),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text("About", style: TextStyle(fontSize: 20)),
              leading: const Icon(
                Icons.info,
                color: Colors.grey,
                size: 30,
              ),
              trailing:
                  const Icon(Icons.chevron_right, color: Colors.black, size: 20),
            ),
            const Divider(),
          ],
        ));
  }
}
