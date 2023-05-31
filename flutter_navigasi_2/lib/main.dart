import 'package:flutter/material.dart';
import 'package:flutter_navigasi_2/home.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => const Homepage()),
               );
          }else if (value == 1) {}
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box), label: "account")
        ]),
        appBar: AppBar(
          title: Text("HALLO NAVIGASI DRAWER"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Text("DRAWER")),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const Homepage()),
                      );
                  },
                  leading: const Icon(Icons.home),
                  title: const Text("HOME"),
                ),
                const ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Exit"),
                )],
          )),
    );
  }
}