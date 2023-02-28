import 'package:flutter/material.dart';
import 'Historique.dart';
import 'forum.dart';
import 'Home.dart';
import 'electrovanne.dart';
import 'capteurSol.dart';

void main ()=> runApp(
    MaterialApp(
      home:PageNav(activePage: 0,),
    )
);

class PageNav extends StatefulWidget {
  int activePage;
  PageNav({Key? key, required this.activePage}) : super(key: key);

  @override
  State<PageNav> createState() {
    return _PageNavState(this.activePage);
  }
}

class _PageNavState extends State<PageNav> {
  final List _pages = [Home(), electrovanne(),Historique(),capteurSol(),forum()];
  int activePage;
  _PageNavState(this.activePage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[activePage],
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/meteo.png'),
                size: 30,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/robinet.png'),
                size: 30,
              ),
              label: 'electrovanne'),
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/graphique.png'),
                size: 30,
              ),
              label: 'historique'),
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/gouttedeau.png'),
                size: 30,
              ),
              label: 'Capteur du sol'),
          BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/reglages.png'),
                size: 30,
              ),
              label: 'Forum')
        ],
        currentIndex: activePage,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(79, 150, 247, 1),
        unselectedItemColor: const Color.fromRGBO(166, 166, 166, 1),
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        onTap: (index) {
          setState(() {
            activePage = index;
          });
        },
      ),
    );
  }
}