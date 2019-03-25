import 'package:coffe_app/model/foodSlider.dart';
import 'package:coffe_app/model/profiles.dart';

List<FoodSlider> getFoodSlider() {
  return [
    FoodSlider(id: 0, title: "Burger", image: "assets/imgs/macchiato.jpg", raiting: 20, profile: [
      Profile(id: 0, title: "Adile", image: "assets/imgs/profile.jpg"),
      Profile(id: 1, title: "Achraf", image: "assets/imgs/p5.jpg"),
      Profile(id: 1, title: "Moad", image: "assets/imgs/p3.png")
    ]),
    FoodSlider(id: 1, title: "Pizza", image: "assets/imgs/long_black.jpg", raiting: 30, profile: [
      Profile(id: 0, title: "Adil", image: "assets/imgs/p2.jpg"),
      Profile(id: 1, title: "Achraf", image: "assets/imgs/p4.jpg"),
      Profile(id: 1, title: "Moad", image: "assets/imgs/p5.jpg")
    ]),
    FoodSlider(id: 2, title: "Rolls", image: "assets/imgs/coffee_expresso.jpg", raiting: 25, profile: [
      Profile(id: 0, title: "Adil", image: "assets/imgs/p3.png"),
      Profile(id: 1, title: "Achraf", image: "assets/imgs/p6.jpg"),
      Profile(id: 1, title: "Moad", image: "assets/imgs/profile.jpg")
    ]),
    FoodSlider(id: 3, title: "Eggs", image: "assets/imgs/milk-coffee.jpg", raiting: 80, profile: [
      Profile(id: 0, title: "Adil", image: "assets/imgs/p6.jpg"),
      Profile(id: 1, title: "Achraf", image: "assets/imgs/p2.jpg"),
      Profile(id: 1, title: "Moad", image: "assets/imgs/p3.png")
    ]),
    FoodSlider(id: 4, title: "Meat", image: "assets/imgs/coffee-chocolate.jpg", raiting: 10, profile: [
      Profile(id: 0, title: "Adil", image: "assets/imgs/p4.jpg"),
      Profile(id: 1, title: "Achraf", image: "assets/imgs/profile.jpg"),
      Profile(id: 1, title: "Moad", image: "assets/imgs/p4.jpg")
    ])
  ];
}
