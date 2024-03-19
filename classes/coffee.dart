


abstract class ICoffee
{

  int beans = 0;
  int water = 0;
  int milk = 0;
  int cash = 0;

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
}

class Espresso implements ICoffee
{
  @override
  int beans = 50;
  @override
  int water = 100;
  @override
  int milk = 0;
  @override
  int cash = 0;

  @override
  int getBeans()
  {
    return beans;
  }

  @override
  int getMilk()
  {
    return milk;
  }

  @override
  int getWater()
  {
    return water;
  }

  @override
  int getCash()
  {
    return cash;
  }

}

 class Cappucchino implements ICoffee
{
  @override
  int beans = 35;
  @override
  int water = 50;
  @override
  int milk = 50;
  @override
  int cash = 0;

  @override
  int getBeans()
  {
    return beans;
  }

  @override
  int getMilk()
  {
    return milk;
  }

  @override
  int getWater()
  {
    return water;
  }

  @override
  int getCash()
  {
    return cash;
  }
}

 class Latte implements ICoffee
{
  @override
  int beans = 35;
  @override
  int water = 50;
  @override
  int milk = 100;
  @override
  int cash = 0;

  @override
  int getBeans()
  {
    return beans;
  }

  @override
  int getMilk()
  {
    return milk;
  }

  @override
  int getWater()
  {
    return water;
  }

  @override
  int getCash()
  {
    return cash;
  }
}