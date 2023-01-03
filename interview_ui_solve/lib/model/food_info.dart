class FoodInfo {
  String name;
  String price;
  String image;

  FoodInfo(this.name, this.price, this.image);

  static List<FoodInfo> generatedProductList() {
    return [
      FoodInfo('Pizza', '\$2.2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR2PI2xJW9TYNcIxgRmp9AQdD9ILtsFfdShw&usqp=CAU'),
      FoodInfo('Burger', '\$2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMgPtF8x4lhf4oH0rSo-mEMnTMGcUZhXmXvg&usqp=CAU'),
      FoodInfo('Sandwich', '\$1.5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt4hjmHNhxPuV4YVT01lDQpxoXCpVlC3HL6Q&usqp=CAU'),
    
    ];
  }
}