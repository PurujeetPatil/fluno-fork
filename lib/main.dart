import 'package:fluno/models/AppData.dart';
import 'package:fluno/models/MenuItemData.dart';
import 'package:fluno/models/PageData.dart';
import 'package:flutter/material.dart';
import 'menu/FlunoPage.dart';


void main() {
  AppData appData = getAppData();
  PageData pageData = getPageData();
  runApp(MyApp(appData,pageData));
}
AppData getAppData() {
  List<MenuItemData> itemList = [
    MenuItemData("/", "Dashboard", Icons.dashboard_outlined),
    MenuItemData("/courses", "My Courses", Icons.golf_course),
    MenuItemData("/subscriptions", "My Subscriptions", Icons.subscriptions),
    MenuItemData.namedConst("/notes", "Notes", Icons.notes, true),
    MenuItemData("/settings", "Settings", Icons.settings_outlined),
    MenuItemData.namedConst(
        "/notification", "Notification", Icons.notifications_outlined, true),
    MenuItemData("/privacy_policy", "Privacy Policy", Icons.privacy_tip_outlined),
    MenuItemData("/send_feedback", "Send feedback", Icons.feedback_outlined),
  ];
  AppData appData =  AppData("ThinkTechEngineers", itemList);

  return appData;
}

PageData getPageData() {
  PageData pageData = new PageData();
  pageData.addPage("/",getContainer("Dashboard"));
  pageData.addPage("/courses", getContainer("courses"));
  pageData.addPage("/subscriptions", getContainer("subscriptions"));
  pageData.addPage("/notes", getContainer("notes"));
  pageData.addPage("/settings", getContainer("settings"));
  pageData.addPage("/notification", getContainer("notification"));
  pageData.addPage("/privacy_policy", getContainer("privacy_policy"));
  pageData.addPage("/send_feedback", getContainer("send_feedback"));
  return pageData;
}

Container getContainer(String title) {
  return Container(
  child: Center(
    child: Text(title),
  ),
);
}
class MyApp extends StatelessWidget {
  final AppData appData;
  final PageData pageData;
  const MyApp(this.appData, this.pageData, {super.key});





  @override
  Widget build(BuildContext context) {


 return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: FlunoPage(pageData,appData),
    );
  }
}

