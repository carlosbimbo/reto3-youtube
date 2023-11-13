import 'package:flutter/material.dart';
import 'package:reto_youtube_io/ui/general/colors.dart';

class ChannelPage extends StatefulWidget {
  @override
  State<ChannelPage> createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBrandPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBrandPrimaryColor,
        elevation: 0,
        title: Text("Lorem ipsum"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 2.7,
          tabs: [
            Tab(
              child: Text(
                "PÁGINA PRINCIPAL",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Tab(
              child: Text(
                "VIDEOS",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Tab(
              child: Text(
                "LISTA DE REPRODUCCIÓN",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Tab(
              child: Text(
                "COMUNIDAD",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Tab(
              child: Text(
                "CANALES",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Tab(
              child: Text(
                "MÁS INFORMACIÓN",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text(
              "Página 1",
            ),
          ),
          Center(
            child: Text(
              "Página 2",
            ),
          ),
          Center(
            child: Text(
              "Página 3",
            ),
          ),
          Center(
            child: Text(
              "Página 4",
            ),
          ),
          Center(
            child: Text(
              "Página 5",
            ),
          ),
          Center(
            child: Text(
              "Página 6",
            ),
          ),
        ],
      ),
    );
  }
}
