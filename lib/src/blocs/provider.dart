import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget{
  final bloc =Bloc();
  //passing to the superclass inherited widget
  Provider({Key key,Widget child}):
      super(key:key,child:child);
  // (_) underscore means I don't care about this
  bool updateShouldNotify(_)=>true;


  //since this method is static we do not have to make object
  static Bloc of(BuildContext context){
    //look all the way back up the tree till you find provider
    return(context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;//retrieve bloc property from that provider
  }

}