import 'package:flutter/material.dart';
import 'package:lazy_loading/real_item.dart';

class Proxy extends StatelessWidget implements RealItem {

  String name;

  Proxy(this.name);

  Widget item;

  @override
  Widget showItem() {
    if(item == null){
      item = RealItem(name).showItem();
    }else{
      print("item is exist");
    }
    return item;
  }

  @override
  Widget build(BuildContext context) {
    print("build item");
    return showItem();
  }
}
