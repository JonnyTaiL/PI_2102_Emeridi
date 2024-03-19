//import 'package:meta/meta.dart';

class Resources
{

  //Variables 

  int beans = 0;
  int water = 0;
  int milk = 0;
  int cash = 0;


  Resources({required this.beans, required this.water, required this.milk, required this.cash});


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
    print('Beans set to $amount');
  }

  void setMilk(int amount)
  { 
    milk = amount;
    print('Milk set to $amount');
  }

  void setWater(int amount)
  { 
    water = amount;
    print('Water set to $amount');
  }

  void setCash(int amount)
  { 
    cash = amount;
    print('Beans set to $amount');
  }


}