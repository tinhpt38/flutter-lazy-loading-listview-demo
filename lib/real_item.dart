import 'package:flutter/material.dart';
import 'package:lazy_loading/item.dart';

class RealItem implements Item{

  String name;

  RealItem(this.name);

  @override
  Widget showItem() {
    print("real item");
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            offset: Offset(0,3),
            blurRadius: 6
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: Icon(Icons.people),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 26,
                color: Colors.black
              ),
            ),
          )
        ],
      ),
    );
  }
}