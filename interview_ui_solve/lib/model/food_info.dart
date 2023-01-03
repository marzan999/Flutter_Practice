class FoodInfo {
  String name;
  String description;
  String description2;
  String price;
  String image;

  FoodInfo(this.name,this.description, this.price, this.image, this.description2 );

  static List<FoodInfo> generatedProductList() {
    return [
      FoodInfo('Pizza', 'This is so tasty', '\$2.2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR2PI2xJW9TYNcIxgRmp9AQdD9ILtsFfdShw&usqp=CAU','pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot.'),
      FoodInfo('Burger','This is so yuammy', '\$2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgPtF8x4lhf4oH0rSo-mEMnTMGcUZhXmXvg&usqp=CAU','pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot.'),
      FoodInfo('Sandwich', 'This is fresh','\$1.5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt4hjmHNhxPuV4YVT01lDQpxoXCpVlC3HL6Q&usqp=CAU','pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot.'),
    
    ];
  }
}