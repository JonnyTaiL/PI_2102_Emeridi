
//import 'package:flutter/material.dart';
import 'coffee.dart';
import 'enums.dart';
import 'resources.dart';
import 'async.dart';


// enum ResourceType
// {
//   beans,
//   milk, 
//   water,
//   cash
// }

// enum CoffeeType
// {
//   americano,
//   latte,
//   cappucchino,
// }

class Machine
{

  var resources = Resources(beans: 100, water: 100, milk: 100, cash: 100);


  void fillResources()
  {
    resources.setBeans(100);
    resources.setWater(200);
    resources.setMilk(100);
    resources.setCash(100);
  }

  void debugPrintResources()
  {
    print('Beans left: ${resources.getBeans()}, Water left: ${resources.getWater()}, Milk left: ${resources.getMilk()}, Cash left: ${resources.getCash()}');
  }


  void subtractResources(int beans, int water, int milk, int cash)
  {
    resources.beans -= beans;
    resources.water -= water;
    resources.milk -= milk;
    resources.cash -= cash;
  }

  bool bAvailableResources(CoffeeType type)
  {
    if( resources.beans >= 50 && resources.water >= 100)
    {
        return true;
    }
    else
    {
      return false;
    }

  }


  

  Future<void> makeCoffee(CoffeeType type) async
  {
    ICoffee coffee;
    switch(type)
    {
      case CoffeeType.espresso:
        coffee = Espresso();
      case CoffeeType.cappucchino:
        coffee = Cappucchino();
      case CoffeeType.latte:
        coffee = Latte();
    }


    if(bAvailableResources(type))
    {
      subtractResources(coffee.getBeans(), coffee.getWater(), coffee.getMilk(), coffee.getCash());

      var proccess = await Async.create();
      
      print('Making coffee took ${coffee.getBeans()}g of Beans, ${coffee.getWater()}ml of Water, ${coffee.getMilk()}ml of Milk and costed ${coffee.getBeans()} bucks');
    }
    else
    {
      print('Not Enougn Resources');
    }
  }



}