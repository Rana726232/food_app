

import 'package:flutter/material.dart';
import 'package:food_app/component/data/dart.dart';
import 'package:food_app/widgets/near_by_restaurent.dart';
import 'package:food_app/widgets/recent_order.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            // centerTitle: true,
            elevation: 0.0,
            toolbarHeight: 80.0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black54,
                size: screenHeight * 0.04,
              ),
            ),
            title: Text(
              'foodzone',
              style: TextStyle(
                  color: Colors.orange, fontSize: screenHeight * 0.04),
            ),
            actions: [
              Row(
                children: [
                  Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Icon(
                          Icons.favorite_outline,
                          size: 30.0,
                          color: Colors.black54,
                        ),
                        Positioned(
                          right: -8,
                          top: -7,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Colors.orange,
                            // child: Text(
                            //   "${currentUser.cart!.length}",
                            //   style: TextStyle(color: Colors.white),
                            // ),
                            child: Text('${currentUser.orders!.length}'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle_sharp,
                      size: 32.0,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 06.0,
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Color(0xFF9c9c9d),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xFF9c9c9d),
                      size: 32.0,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.close,
                        color: Colors.black54,
                      ),
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      borderSide:BorderSide(color: Colors.orangeAccent, width: 1.0)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        borderSide:BorderSide(color: Colors.orangeAccent, width: 2.0)
                    ),
                  ),

                ),
              ),
            ),),
        body:Container(
          height: screenHeight,
          width: screenWidth,
          child: ListView(
            children: [
              RecentOrder(),
              NearByRestaurant(),
            ],
          ),
        ) ,
      ),
    );
  }
}
