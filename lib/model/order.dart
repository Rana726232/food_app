
import 'package:food_app/model/food.dart';
import 'package:food_app/model/restaurent.dart';
class Order {
  late final Restaurant? restaurant;
  late final Food? food;
  late final String? date;
  late final int? quantity;
  Order({this.date,this.restaurant,this.food,this.quantity});



}