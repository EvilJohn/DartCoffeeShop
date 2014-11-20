
import 'dart:core';

import 'package:angular/angular.dart';

@Injectable()
class CoffeeShopController {
  
  List<String> drinkTypes = ["Americano","Espresso", "Latte"];
  List<String> sizes      = ["Small", "Medium", "Large"];
  String drinker;

  String selectedDrinkType;
  String selectedSize;
  Drink order;
  
  
  
  CoffeeShopController() {
    selectedDrinkType= drinkTypes[0];
    selectedSize = sizes[0];   
  }     
  
  void submit() {
    order = new Drink(selectedDrinkType, selectedSize, drinker);
  }
  
}

class Drink {
  String drinkType;
  String size;
  String drinker;
  
  Drink(this.drinkType, this.size, this.drinker);
  
}
