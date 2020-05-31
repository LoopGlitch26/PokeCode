import 'package:flutter/material.dart';
import 'navigation_bloc.dart';
import 'homepage.dart';

class MyCardsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const MyCardsPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.blueGrey,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    child: Icon(Icons.menu, color: Colors.white),
                    onTap: onMenuTap,
                  ),
                  Text("My Cards", style: TextStyle(fontSize: 24, color: Colors.white)),
                  Icon(Icons.settings, color: Colors.white),
                ],
              ),
              SizedBox(height: 50),
              Container(
                // The cards. Have to add Pie Charts
                height: 200,
                child: PageView(
                  controller: PageController(viewportFraction: 0.8),
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                        );
//                        BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.ProjectsClickedEvent);
//                        onMenuItemClicked();
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/CCartoon.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: null,
                        width: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/C++Cartoon.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: null,
                        width: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/PythonCartoon.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: null,
                        width: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/DockerCartoon.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: null,
                        width: 100,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/FlutterCartoon.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: null,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Your Courses",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
//              ListView.separated(
//                shrinkWrap: true,
//                itemBuilder: (context, index) {
//                  return ListTile(
//                    title: Text("Android Course"),
//                    subtitle: Text("Mobile Developement"),
//                    trailing: Text("900"),
//                  );
//                },
//                separatorBuilder: (context, index) {
//                  return Divider(height: 16);
//                },
//
//                itemCount: 10,
//              ),
              ListView(
                shrinkWrap: true,
                children: ListTile.divideTiles( //          <-- ListTile.divideTiles
                    context: context,
                    tiles: [
                      ListTile(
                        title: Text("Kotlin Course"),
                        subtitle: Text("Mobile Developement"),
                        trailing: Text("900"),
                      ),
                      ListTile(
                        title: Text("Java Course"),
                        subtitle: Text("Language"),
                        trailing: Text("900"),
                      ),
                      ListTile(
                        title: Text("Python Course"),
                        subtitle: Text("Language"),
                        trailing: Text("900"),
                      ),
                      ListTile(
                        title: Text("Flutter Course"),
                        subtitle: Text("Mobile Developement"),
                        trailing: Text("900"),
                      ),
                      ListTile(
                        title: Text("Swift Course"),
                        subtitle: Text("Mobile Developement"),
                        trailing: Text("900"),
                      ),
                    ]
                ).toList(),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}