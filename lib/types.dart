import 'package:flutter/material.dart';

class TypesModel{
  late String name;
  late String img;
}

List<TypesModel> getTypes()
{
  List<TypesModel> wallpaper=[];
  TypesModel type=new TypesModel();

  type.img =Image.asset('assets/wildlife.jpg') as String;
  type.name = "Animals";
  wallpaper.add(type);
  type = new TypesModel();

 //
  type.img =Image.asset("assets/city.jpg") as String;
  type.name = "City";
  wallpaper.add(type);
  type = new TypesModel();

  //
  type.img =Image.asset("assets/nature.jpg") as String;
  type.name = "Nature";
  wallpaper.add(type);
  type = new TypesModel();

  //
  type.img =Image.asset("assets/motivation.jpg") as String;
  type.name = "Motivation";
  wallpaper.add(type);
  type = new TypesModel();


  //
  type.img =Image.asset("assets/bikes.jpg") as String;
  type.name = "Bikes";
  wallpaper.add(type);
  type = new TypesModel();

  //
  type.img =Image.asset("assets/cars.jpg") as String;
  type.name = "Cars";
  wallpaper.add(type);
  type = new TypesModel();

  return wallpaper;

  

}