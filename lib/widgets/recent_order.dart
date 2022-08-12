import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/component/data/dart.dart';
import 'package:food_app/model/order.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder({Key? key}) : super(key: key);

  recentOrder(BuildContext context, Order order) {
    return Container(
      padding: const EdgeInsets.fromLTRB(02.0, 05.0, 10.0, 05.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
        width: 300,
          // width: MediaQuery.of(context).size.width * 0.70,
          color: Color(0xFFF2F2F2),

          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "${order.food!.imageUrl}",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${order.food!.name}'),
                      Text(
                        '${order.restaurant!.name}',
                      ),
                      Text(
                        '${order.date}',
                        style: TextStyle(fontSize: 18.0),
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
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Expanded(
          flex: 1,
          child: Text('Recent Order', style: TextStyle(fontSize: 24.0),),
        ),
        Expanded(
          flex: 4,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16.0, 20.0, 0.0, 20.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders!.length,
              itemBuilder: (contex,index){
              Order order = currentUser.orders![index];
              return recentOrder(context,order);
              }),
        ),),
      ]),
    );
  }
}
