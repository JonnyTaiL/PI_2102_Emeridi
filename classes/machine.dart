
//import 'package:flutter/material.dart';



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

  //Variables
  int beans = 100;
  int milk = 100;
  int water = 100;
  int cash = 100;



  //Functions
  int getBeans()
  {
    return beans;
  }

  int getMilk()
  {
    return milk;
  }

  int getWater()
  {
    return water;
  }

  int getCash()
  {
    return cash;
  }



  void setBeans(int amount)
  { 
    beans = amount;
    print('Beans set to 100');
  }

  void setMilk(int amount)
  { 
    milk = amount;
    print('Milk set to 100');
  }

  void setWater(int amount)
  { 
    water = amount;
    print('Water set to 200');
  }

  void setCash(int amount)
  { 
    cash = amount;
    print('Beans set to 100');
  }

  void subtractResources()
  {
    beans -= 50;
    water -= 100;
  }

  bool bAvailableResources()
  {
    if( beans >= 50 && water >= 100)
    {
        return true;
    }
    else
    {
      return false;
    }

  }


  

  void makeCoffee()
  {
    if(bAvailableResources())
    {
      subtractResources();
      print('Making coffee took 50g of Beans and 100ml of Water');
    }
    else
    {
      print('Not Enougn Resources');
    }
  }

  
  

}