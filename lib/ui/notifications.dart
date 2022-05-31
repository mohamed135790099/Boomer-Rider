import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NotificationsView();
  }
}

class NotificationsView extends StatefulWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

const kExpandedHeight = 300.0;

class _NotificationsViewState extends State<NotificationsView> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: kExpandedHeight,
                floating: false,
                automaticallyImplyLeading: false,
                pinned: true,
                backgroundColor: Colors.black,
                leading: GestureDetector(
                  child: IconButton(
                    onPressed: ()=> Navigator.pop(context),
                    icon: const Icon(Icons.close, size: 28, color: Colors.white),
                  ),
                ),
                actions: <Widget>[
                  Row(
                    children: const <Widget>[
                       Text(
                        "HELP",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Icon(Icons.help, size: 28, color: Colors.white),
                    ],
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: <Widget>[
                      Container(
                        height: 300,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const SizedBox(
                              height: 80,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                FunctionalButton(
                                  icon: Icons.attach_money,
                                  title: "Earnings",
                                  onPressed: () =>
                                      Navigator.pushNamed(context, "/earnings"),
                                ),
                                ProfileButton(
                                  onPressed: () =>
                                      Navigator.pushNamed(context, "/profile"),
                                  icon: Icons.star,
                                  title: "Profile",
                                  rating: "4.88",
                                ),
                                FunctionalButton(
                                  icon: Icons.settings,
                                  title: "Account",
                                  onPressed: () =>
                                      Navigator.pushNamed(context, "/account"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Scaffold(
            body: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.all(Radius.circular(20))),
              child: ListView(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child:  Text(
                      "Notifications",
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Explore these safety features",
                        style:  TextStyle(fontSize: 20)),
                    subtitle: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("9/17/18, 3:54 PM",
                            style:  TextStyle(fontSize: 16))),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Free Instant Pay cashouts this week",
                        style:  TextStyle(fontSize: 20)),
                    subtitle: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("9/17/18, 3:54 PM",
                            style: TextStyle(fontSize: 16))),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.warning,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Track your earnings",
                        style: TextStyle(fontSize: 20)),
                    subtitle: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("9/17/18, 3:54 PM",
                            style:  TextStyle(fontSize: 16))),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Follow the opportunity",
                        style:  TextStyle(fontSize: 20)),
                    subtitle: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("9/17/18, 3:54 PM",
                            style:  TextStyle(fontSize: 16))),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Plan your day with ease the opportunity",
                        style:  TextStyle(fontSize: 20)),
                    subtitle: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("9/17/18, 3:54 PM",
                            style: TextStyle(fontSize: 16))),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.lightbulb_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Your earnings are processed Tuesday at noon",
                        style: TextStyle(fontSize: 20)),
                    subtitle: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("9/17/18, 3:54 PM",
                            style: TextStyle(fontSize: 16))),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.attach_money,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title:
                        const Text("Welcome, Márcio", style: TextStyle(fontSize: 20)),
                    subtitle: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text("9/17/18, 3:54 PM",
                            style:
                            TextStyle(fontSize: 16))),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.person_pin,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class FunctionalButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;

  const FunctionalButton({Key? key, required this.title, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  _FunctionalButtonState createState() => _FunctionalButtonState();
}

class _FunctionalButtonState extends State<FunctionalButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RawMaterialButton(
          onPressed: widget.onPressed,
          splashColor: Colors.black,
          fillColor: Colors.blue,
          elevation: 15.0,
          shape: const CircleBorder(),
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                widget.icon,
                size: 50.0,
                color: Colors.white,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
          child: Text(
            widget.title,
            style: const TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class ProfileButton extends StatefulWidget {
  final String title, rating;
  final IconData icon;
  final Function() onPressed;

  const ProfileButton(
      {Key? key, required this.title, required this.rating, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  _ProfileButtonState createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  "assets/images/user_profile.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
                child: Text(
                  widget.title,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
          Positioned(
            left: 14,
            top: 75,
            child: Container(
              width: 70,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all( Radius.circular(50.0)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(widget.rating,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    widget.icon,
                    color: Colors.black,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
