import 'package:fluno/models/AppData.dart';
import 'package:fluno/models/PageData.dart';
import 'package:flutter/material.dart';

import 'AppDrawer.dart';

class FlunoPage extends StatefulWidget {
  final PageData pageData;
  final AppData appData;
  const FlunoPage(this.pageData,this.appData,{Key? key}) : super(key: key);
  @override
  State<FlunoPage> createState() => _FlunoPageState();
}

class _FlunoPageState extends State<FlunoPage> {
  String route="/";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.appData.title),
      ),
      drawer: AppDrawer(widget.appData.itemList,pageChanged),
      body:  widget.pageData.getPage(route),

    );
  }
   void pageChanged(String page) {
      setState(() {
        route =page;
      });
   }

}



