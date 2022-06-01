import 'package:flutter/material.dart';
import 'package:futbal_gundem/Pages/Agenda_page.dart';
import 'package:futbal_gundem/Pages/News_page.dart';
import 'package:futbal_gundem/Pages/Puan_page.dart';
import 'package:futbal_gundem/Pages/Setting_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  bool searchBar = false;
  int current_index = 0;
  String appbarText;

  final tabs = [NewsPage(), AgendaPage(), PuanPage(), SettingPage()];

  @override
  void initState() {
    super.initState();
    searchBar = false;
    current_index = 0;
    print(current_index);
    appbarText = "Haberler";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                searchBar = !searchBar;
              });
            },
            icon: Icon(searchBar ? Icons.close : Icons.search),
          ),
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
        title: !searchBar
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      '$appbarText',
                      style: TextStyle(
                          fontFamily: 'Mermaid',
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )
                ],
              )
            : Container(
                // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: TextField(
                    // maxLength: 16,
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Birşeyler Arayın",
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search),
                )),
              ),
      ),
      body: tabs[current_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Haberler",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: "Gündem",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Puan Durumu",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Ayarlar",
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            current_index = index;
            if (current_index == 0) {
              appbarText = "Haberler";
            } else if (current_index == 1) {
              appbarText = "Gündem";
            } else if (current_index == 2) {
              appbarText = "Puan Durumu";
            } else if (current_index == 3) {
              appbarText = "Ayarlar";
            }
          });
        },
      ),
    );
  }
}
