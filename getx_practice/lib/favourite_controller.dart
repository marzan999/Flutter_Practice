import 'package:get/get.dart';

class FavouriteController extends GetxController {
  RxList<String> fruitName = ['Apple', 'Banana', 'Lichi', 'Pine-Apple'].obs;
  RxList tempfruitName = [].obs;

  addToFavourite(String value) {
    tempfruitName.add(value);
  }

  removeFromFavourite(String value) {
    tempfruitName.remove(value);
  }
}
