import 'dart:async';


class Async
{

  Async._create();
  
  static Future<Async> create() async
  {

      var component = Async._create();


      await component.heatWater();
      await component.brewCoffee();
      await component.frothMilk();
      await component.mixMilk();
      

      return component;

  }



  Future<void> heatWater() async
  {
    print('__Heating water started__');

    String message = await finishMessage(3, '__Water Heating Finished__');
    
    print(message);


    
  }

  Future<void> brewCoffee() async
  {
    print('__Brewing Coffee Started__');

    String message = await finishMessage(5, '__Coffee Brewing Finished__');
    
    print(message);
  }

  Future<void> frothMilk() async
  {
    print('__Frothing Milk Started__');

    String message = await finishMessage(5, '__Frothing Milk Finished__');
    
    print(message);
  }

  Future<void> mixMilk() async
  {
    print('__Mix Milk Started__');

    String message = await finishMessage(3, '__Mix Milk Finished__');
    
    print(message);
  }


  Future<String> finishMessage(int delay, String message)
  {
    return Future.delayed(Duration(seconds: delay), () => message);
  }

}