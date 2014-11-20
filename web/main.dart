
import 'dart:core';

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'coffee_shop_controller.dart';



class MyModule extends Module {
  MyModule() {
    bind(CoffeeShopController);
  }
}

void main() {
  applicationFactory()
        .rootContextType(CoffeeShopController)
        .addModule(new MyModule())
        .run();
}


