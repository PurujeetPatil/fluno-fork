import 'package:flutter/material.dart';

class MenuItemData {
   late String label;
   late IconData iconData;
   late String route;
   bool dividerAfter=false;
   MenuItemData(this.route,this.label,this.iconData);
   MenuItemData.namedConst(this.route,this.label,this.iconData,this.dividerAfter);


}

