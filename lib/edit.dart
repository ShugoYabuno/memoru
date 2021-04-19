import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => new _EditState();
}

class _EditState extends State<Edit> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Widget> _tabs = [
    const Tab(
      child: Text("preview"),
    ),
    const Tab(
      child: Text("editing"),
    )
  ];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("編集"),
        bottom: TabBar(controller: _tabController, tabs: _tabs),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
        ],
      ),
    );
  }
}
