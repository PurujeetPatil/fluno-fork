import 'package:fluno/models/MenuItemData.dart';
import 'package:flutter/material.dart';
import 'UIMenuItemText.dart';

class DrawerItems extends StatefulWidget {
  final List<MenuItemData> menuItems ;
  final Function(String route) notifyParent;
  DrawerItems(this.menuItems,this.notifyParent, {super.key});
  @override
  State<DrawerItems> createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  String route="/";
  @override
  Widget build(BuildContext context) {
    List<Widget> drawerItems = getDrawerItems();
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: drawerItems,
      ),
    );
  }

  List<Widget> getDrawerItems() {
    List<Widget> drawerItems = [];
    for(MenuItemData menuItemData in widget.menuItems){
        drawerItems.add(menuItem(menuItemData.label,menuItemData.iconData, menuItemData.route));
        if(menuItemData.dividerAfter){
          drawerItems.add(const Divider());
        }
    }
    return drawerItems;
  }
  Widget menuItem( String title, IconData icon, String itemRoute) {
    return Material(
      color: route==itemRoute ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);

          setState(() {
            route=itemRoute;
            widget.notifyParent(itemRoute);
          });
        },
        child: UIMenuItemText(title, icon),
      ),
    );
  }
}
