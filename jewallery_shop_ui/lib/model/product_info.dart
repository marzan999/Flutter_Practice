class ProductInfo {
  String name;
  String price;
  String image;

  ProductInfo(this.name, this.price, this.image);

  static List<ProductInfo> generatedProductList() {
    return [
      ProductInfo('Jewellery-1', '1200', 'images/1.jpg'),
      ProductInfo('Jewellery-2', '1300', 'images/2.png'),
      ProductInfo('Jewellery-3', '2300', 'images/3.jpeg'),
      ProductInfo('Jewellery-4', '1200', 'images/4.jpeg'),
      ProductInfo('Jewellery-5', '1300', 'images/5.jpg'),
      ProductInfo('Jewellery-6', '2300', 'images/6.jpg'),
      ProductInfo('Jewellery-7', '2300', 'images/7.jpg'),
      ProductInfo('Jewellery-8', '1560', 'images/1.jpg'),
      ProductInfo('Jewellery-9', '1310', 'images/2.png'),
      ProductInfo('Jewellery-10', '2230', 'images/3.jpeg'),
      ProductInfo('Jewellery-11', '4533', 'images/1.jpg'),
      ProductInfo('Jewellery-12', '6454', 'images/2.png'),
      ProductInfo('Jewellery-13', '5855', 'images/3.jpeg'),
      ProductInfo('Jewellery-14', '1200', 'images/4.jpeg'),
      ProductInfo('Jewellery-14', '1300', 'images/5.jpg'),
      ProductInfo('Jewellery-15', '2300', 'images/6.jpg'),
      ProductInfo('Jewellery-16', '2300', 'images/7.jpg'),
    ];
  }
}
