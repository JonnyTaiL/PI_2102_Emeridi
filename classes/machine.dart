
//import 'package:flutter/material.dart';



enum ResourceType
{
  beans,
  milk, 
  water,
  cash
}

enum CoffeeType
{
  americano,
  latte,
  cappucchino,
}

class Machine
{

  //Variables
  int beans = 100;
  int milk = 100;
  int water = 100;
  int cash = 100;



  //Functions
  int getResource(ResourceType resourceType)
  {
    switch (resourceType) {
      case ResourceType.beans:
        return beans;
      case ResourceType.milk:
        return milk;
      case ResourceType.water:
        return water;
      case ResourceType.cash:
        return cash;
      default: return -1;
    }
  }

  void setResource(ResourceType resourceType, int amount)
  { 
    switch (resourceType) {
      case ResourceType.beans:
        beans = amount;
      case ResourceType.milk:
        milk = amount;
      case ResourceType.water:
        water = amount;
      case ResourceType.cash:
        cash = amount;
    }
  }

  void subtractResources(CoffeeType type)
  {
    switch (type) {
      case CoffeeType.americano:
        beans -= 50;
        water -= 100;
      case CoffeeType.latte:
        beans -=30;
        water -=50;
        milk -= 50;
      case CoffeeType.cappucchino:
        beans -=40;
        water -=70;
        milk -= 30;

    }
  }

  bool bAvailableResources(CoffeeType type)
  {
    switch (type) {
      case CoffeeType.americano:
        if(beans >= 50 && water >= 100)
        {
          return true;
        } 
        else {
          return false;
        }

      case CoffeeType.latte:
        if(beans >= 30 && water >= 50 && milk >= 50)
        {
          return true;
        } 
        else {
          return false;
        }

      case CoffeeType.cappucchino:
        if(beans >= 40 && water >= 70 && milk >= 30)
        {
          return true;
        } 
        else {
          return false;
        }
        

      default: return false;
    }
  }

  void makeCoffee(CoffeeType type)
  {
    if(bAvailableResources(type))
    {
      subtractResources(type);
    }
    else
    {
      print('Not Enougn Resources');
    }
  }

  
  

}