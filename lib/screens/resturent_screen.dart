

import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/model/restaurent.dart';

class RestaurantScreen extends StatelessWidget {
  RestaurantScreen({Key? key, required this.restaurant}) : super(key: key);

  Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("${restaurant.imageUrl}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.only(top: 20),
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () => Navigator.pop(context),
                                icon: Icon(
                                  Icons.arrow_back,
                                  size: 32.0,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  size: 32.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${restaurant.name}",
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 30.0,
                                    color: Colors.greenAccent,
                                  ),
                                  Text(
                                    "${restaurant.address}",
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white60,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.orange,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 6.0),
                                child: Text(
                                  "Contect",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: ListView(
                  children: [
                    Container(
                      child: Text(
                        '${restaurant.menu!.length} Menus',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.symmetric(horizontal: 06.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.6,
                        controller:
                            new ScrollController(keepScrollOffset: false),
                        shrinkWrap: true,
                        children: List.generate(
                          restaurant.menu!.length,
                          (index) {
                            Food food = restaurant.menu![index];

                            var discount_price =
                                (food.price! - (food.price! * 0.33))
                                    .toStringAsFixed(2);
                            return Container(
                              margin: EdgeInsets.only(
                                  bottom: 20.0,
                                  left: 10.0,
                                  right: 10.0,
                                  top: 10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10.0,
                                    color: Colors.black54.withOpacity(0.4),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  '${food.imageUrl}'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: double.infinity,
                                          color: Colors.grey.shade200,
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${food.name}',
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.w600,
                                                  // color: Colors.grey
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "\$${discount_price}",
                                                    style: TextStyle(
                                                      fontSize: 20.0,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.orange,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Text(
                                                    "\$${food.price}",
                                                    style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                        FontWeight.w600,
                                                        color: Colors.black38),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 05.0,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                    color: Color(0xFFFF8F00),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                    color: Color(0xFFFF8F00),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                    color: Color(0xFFFF8F00),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                    color: Color(0xFFFF8F00),
                                                  ),
                                                  Icon(
                                                    Icons.star_half,
                                                    size: 20,
                                                    color: Color(0xFFFF8F00),
                                                  ),
                                                  SizedBox(
                                                    width: 5.0,
                                                  ),
                                                  Text(
                                                    "(230)",
                                                    style:
                                                    TextStyle(fontSize: 16.0),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
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
