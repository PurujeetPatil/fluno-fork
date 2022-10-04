import 'package:fluno/menu/DrawerItems.dart';
import 'package:fluno/models/MenuItemData.dart';
import 'package:flutter/material.dart';

import 'my_drawer_header.dart';

class AppDrawer extends StatelessWidget {
  final List<MenuItemData> itemList;
  final Function(String route) notifyParent;
  AppDrawer(this.itemList,this.notifyParent);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MyHeaderDrawer(),
              DrawerItems(itemList,this.notifyParent),
            ],
          ),
        ),
      ),
    );
  }

}
