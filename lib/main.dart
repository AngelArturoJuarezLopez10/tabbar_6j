import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(70), // Creates border
                color: Colors.orangeAccent),
            tabs: [
              Tab(icon: Icon(Icons.signal_wifi_connected_no_internet_4)),
              Tab(icon: Icon(Icons.search)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
          title: Text('Tabs Juarez Lopez Angel Arturo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.signal_wifi_connected_no_internet_4, size: 350),
            Icon(Icons.search, size: 350),
            Icon(Icons.settings, size: 350),
          ],
        ),
      ),
    );
  }
}
