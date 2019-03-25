import 'package:coffe_app/model/foodCategory.dart';
import 'package:coffe_app/model/foodSlider.dart';
import 'package:coffe_app/model/profiles.dart';
import 'package:coffe_app/model/tabs.dart';
import 'package:coffe_app/tab_items.dart';
import 'package:coffe_app/utils/data_foodCategory.dart';
import 'package:coffe_app/utils/data_foodSlider.dart';
import 'package:coffe_app/utils/data_tabs.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  List<FoodCategory> foods = getFoods();
  List<FoodSlider> foodSliderList = getFoodSlider();
  bool tabsOne, tabTwo, tabThree, tabFour, tabFive;
  int currentSelected = 0;
  IconData nextIcon = Icons.dashboard;
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: containerScrollView(), bottomNavigationBar: getTabs()));
  }
// decoration: BoxDecoration(color: Colors.white70, boxShadow: [
//         BoxShadow(
//             blurRadius: 3.0,
//             color: Colors.black.withOpacity(0.1),
//             spreadRadius: 3.0)
//       ]),
  Widget getTabs() {
    return Container(
      decoration:BoxDecoration(color: Colors.white70, boxShadow: [
        BoxShadow(
            blurRadius: 3.0,
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1.0)
      ]),
      height: 60,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TabItem(
              selected: currentSelected == 0,
              iconData: Icons.dashboard,
              title: "HOME",
              callbackFunction: () {
                setState(() {
                  nextIcon = Icons.dashboard;
                  currentSelected = 0;
                  // });
                  // _initAnimationAndStart(_positionAnimation.value, -1);
                  // setState(() {
                  //   currentPageIndex = 0;
                });
              }),
          TabItem(
              selected: currentSelected == 1,
              iconData: Icons.search,
              title: "SEARCH",
              callbackFunction: () {
                setState(() {
                  nextIcon = Icons.search;
                  currentSelected = 1;
                  // });
                  // _initAnimationAndStart(_positionAnimation.value, -0.3);
                  // setState(() {
                  //   currentPageIndex = 1;
                });
              }),
          TabItem(
              selected: currentSelected == 2,
              iconData: Icons.person,
              title: "USER",
              callbackFunction: () {
                setState(() {
                  nextIcon = Icons.person;
                  currentSelected = 2;
                  // });
                  // _initAnimationAndStart(_positionAnimation.value, 0.4);
                  // setState(() {
                  //   currentPageIndex = 2;
                });
              }),
          TabItem(
              selected: currentSelected == 3,
              iconData: Icons.radio,
              title: "USER",
              callbackFunction: () {
                setState(() {
                  nextIcon = Icons.radio;
                  currentSelected = 3;
                  // });
                  // _initAnimationAndStart(_positionAnimation.value, 1);
                  // setState(() {
                  //   currentPageIndex = 3;
                });
              })
        ],
      ),
    );
  }

  Widget containerScrollView() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Good morning',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-Regular'),
                ),
                Icon(Icons.add_shopping_cart)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Jerry',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat-Regular'),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Image.asset(
                  'assets/imgs/coffee-cup.png',
                  width: 30.0,
                  height: 30.0,
                )
              ],
            ),
          ),
          Container(
            child: foodCategory(),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: foodSlider(),
          )
        ],
      ),
    );
  }

  Widget foodCategory() {
    return Container(
        height: 180.0,
        margin: EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          padding: EdgeInsets.only(left: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: foods.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  for (var i = 0; i < foods.length; i++) {
                    foods[i].isActive = false;
                  }
                  foods[index].isActive = true;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                curve: Curves.ease,
                width: 75.0,
                margin: EdgeInsets.only(right: 18.0, top: 8.0, bottom: 8.0),
                decoration: BoxDecoration(
                    color: foods[index].isActive
                        ? Color(0xFF9B6348)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 3.0)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(
                              color: foods[index].isActive
                                  ? Colors.white
                                  : Colors.black)),
                      child: Image.asset(
                        foods[index].image,
                        width: 35.0,
                        height: 35.0,
                        color:
                            foods[index].isActive ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      foods[index].name,
                      style: foods[index].isActive
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Icon(
                      Icons.more_vert,
                      color:
                          foods[index].isActive ? Colors.white : Colors.black,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      foods[index].qty,
                      style: foods[index].isActive
                          ? TextStyle(color: Colors.white)
                          : TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 5.0,
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }

  Widget foodSlider() {
    return Container(
      height: 315.0,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 12.0),
        scrollDirection: Axis.horizontal,
        itemCount: getFoodSlider().length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 15.0, top: 5.0, bottom: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 3.0)
                ]),
            width: 200.0,
            child: Column(
              children: <Widget>[
                Container(
                  height: 235.0,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(getFoodSlider()[index].image,
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 14.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        getFoodSlider()[index].title,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 14.0, top: 8.0, right: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      getProfileImages(getFoodSlider()[index].profile),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget getProfileImages(List<Profile> profile) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < profile.length; i++) {
      list.add(Container(
        margin: EdgeInsets.only(right: 8.0),
        child: new ClipOval(
            child: Image.asset(
          profile[i].image,
          width: 20.0,
          height: 20.0,
        )),
      ));
    }
    return new Row(children: list);
  }
}
