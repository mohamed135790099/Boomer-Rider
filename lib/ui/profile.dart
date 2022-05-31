import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

const kExpandedHeight = 300.0;

class _ProfileViewState extends State<ProfileView> {
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
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back, size: 26, color: Colors.white),
                  ),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.edit, size: 26, color: Colors.white),
                    onPressed: () {},
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(top: 100),
                        height: 300,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: Center(
                          child: ProfileWidget(
                            onPressed: () =>
                                Navigator.pushNamed(context, "/profile"),
                            icon: Icons.star,
                            name: "Márcio",
                            rating: "4.88",
                          ),
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
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: const <Widget>[
                            Text(
                              "3,914",
                              style: TextStyle(
                                fontSize: 34,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Trips",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 1,
                          decoration: const BoxDecoration(
                              border:  Border(
                                  right: BorderSide(color: Colors.black12))),
                        ),
                        Column(
                          children: const <Widget>[
                             Text(
                              "4",
                              style: TextStyle(
                                fontSize: 34,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Years",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Tell customers a little about yourself",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            width: 200,
                            height: 60,
                            margin: const EdgeInsets.only(bottom: 10),
                            alignment: FractionalOffset.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 2),
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4.0)),
                            ),
                            child: const Text('ADD DETAILS',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                         Text(
                          "Compliements",
                          style:  TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.normal),
                        ),
                         Text(
                          "VIEW ALL",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  makeCompliementsList("Cool Car"),
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

class ProfileWidget extends StatefulWidget {
  final String name, rating;
  final IconData icon;
  final Function() onPressed;

  const ProfileWidget(
      {Key? key, required this.name, required this.rating, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
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
                  widget.name,
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 160,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(widget.rating,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      widget.icon,
                      color: Colors.black,
                      size: 22,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget makeCompliementsList(String title) {
  return Container(
    padding: const EdgeInsets.only(left: 5, right: 5),
    height: 220,
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 200,
          child: ListView(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: makeContainers(title),
          ),
        )
      ],
    ),
  );
}

int counter = 0;
List<Widget> makeContainers(String title) {
  List<Container> compliementsList = [];
  for (var i = 0; i < 6; i++) {
    counter++;
    compliementsList.add(Container(
      margin: const EdgeInsets.only(right: 10),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  "assets/images/logo.png",
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
                  title,
                  style: const TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              ),
            ],
          ),
          Positioned(
            left: 68,
            top: -1,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(50.0)),
              ),
              child: const Center(
                              child:  Text("1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    ));
    if (counter == 12) {
      counter = 0;
    }
  }
  return compliementsList;
}
