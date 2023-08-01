import 'package:easy_dashboard/easy_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:tutorfind/TutorListTable.dart';
import 'package:tutorfind/dashboard.dart';
import 'package:tutorfind/splash_screen.dart';

import 'floatingactionbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final EasyAppController controller = EasyAppController(
    intialBody: EasyBody(child: const Dashboard(), title: const Text("Dashboard",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionbutton(),
      body: EasyDashboard(
        controller: controller,
        appBarActions: [
          CircleAvatar(backgroundImage:  NetworkImage("https://scontent.fdac138-1.fna.fbcdn.net/v/t39.30808-1/315600015_1742983552739480_1620697353844158411_n.jpg?stp=dst-jpg_p160x160&_nc_cat=100&ccb=1-7&_nc_sid=dbb9e7&_nc_ohc=mWqnkcNhjwgAX87n5Jg&_nc_ht=scontent.fdac138-1.fna&oh=00_AfApxJAiCOZha-tudJfuv5tpuj9fI6NTAgn3iPhfYtRRDg&oe=64BC98BD")),
          SizedBox(width: 10,),

        ],
        navigationIcon: const Icon(Icons.menu, color: Colors.white),
        // appBarActions: actions,
        centerTitle: true,
        appBarColor: Colors.teal,
        sideBarColor: Colors.grey.shade100,
        tabletView: const TabletView(
          fullAppBar: false,
          border: BorderSide(width: 0.5, color: Colors.grey),
        ),
        desktopView: const DesktopView(
          fullAppBar: true,
          border: BorderSide(width: 0.5, color: Colors.grey),
        ),
        drawer: (Size size, Widget? child) {
          return EasyDrawer(
            selectedTextColor: Colors.white,
            iconColor: Colors.teal,
            hoverColor: Colors.tealAccent.shade100.withOpacity(0.8),
            tileColor: Colors.grey.shade100,
            selectedColor: Colors.white,
            selectedIconColor: Colors.white,
            textColor: Colors.black.withGreen(20),
            selectedTileColor: Colors.teal.shade400.withOpacity(.8),
            topWidget: SideBox(
              scrollable: true,
              height: 150,
              child: UserAccountsDrawerHeader(
                  accountName: Text("Raihan Hossain"),
                  accountEmail: Text("hossainraihan02@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage:  NetworkImage("https://raddn.github.io/images/mewebp.webp")),
              )
            ),
            tiles: [
              SideBarTile(icon: Icons.dashboard, name: "Dashboard", title: const Text("Dashboard",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)), body: const Dashboard(),),
              SideBarTile(icon: Icons.ac_unit, name: "Tutor List", title: const Text("Tutor List",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)), body: const TutorListTable()),
              SideBarTile(icon: Icons.ac_unit, name: "menu2", title: const Text("data"), body: const Text("body")),
              SideBarTile(icon: Icons.ac_unit, name: "Home2", title: const Text("data"), body: const Text("body")),
            ],
            bottomWidget: const SideBox(
              scrollable: false,
              height: 50,
              child: Text("Raihan Hossain©"),
            ),
            bottomSmallWidget: const SideBox(
              height: 50,
               child: Text("R"),
            ),
            topSmallWidget: const SideBox(
              height: 50,
              child: Text("menu"),
            ),
            size: size,
            onTileTapped: (body) {
              controller.switchBody(body);
            },
          );
        },
      ),
    );
  }
}


