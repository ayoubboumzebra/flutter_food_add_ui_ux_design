
import 'package:coffe_app/model/foodCategory.dart';

List<FoodCategory> getFoods() {
  return [
    FoodCategory(id: 0, name: "Burger", image: "assets/imgs/tea.png", qty: "20", isActive: false),
    FoodCategory(id: 1, name: "Pizza", image: "assets/imgs/coffee.png", qty: "30", isActive: true),
    FoodCategory(id: 2, name: "Rolls", image: "assets/imgs/soda.png", qty: "25", isActive: false),
    FoodCategory(id: 3, name: "Eggs", image: "assets/imgs/cake.png", qty: "80", isActive: false),
    FoodCategory(id: 4, name: "Meat", image: "assets/imgs/cocktail.png", qty: "10", isActive: false)
  ];
}
