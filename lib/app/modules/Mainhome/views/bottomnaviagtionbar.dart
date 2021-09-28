import 'package:flutter/material.dart';
import 'package:food/app/modules/Mainhome/views/mainhome_view.dart';
import 'package:food/app/modules/account/views/account_view.dart';

class BottomnavigationBar extends StatefulWidget {
  const BottomnavigationBar({Key? key}) : super(key: key);

  @override
  _BottomnavigationBarState createState() => _BottomnavigationBarState();
}

class _BottomnavigationBarState extends State<BottomnavigationBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // ignore: prefer_final_fields
  static List _pages = [
    MainhomeView(
      id: 0,
      title: '',
      url: '',
    ),
    Text(
      "No Itims Yet",
      style: TextStyle(color: Colors.grey, fontSize: 20),
    ),
    AccountView(
      icon: "",
      title: "",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ), //New
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(NetworkImage(
                  "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/explore.png")),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(NetworkImage(
                  "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/cart.png")),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(NetworkImage(
                  "https://raw.githubusercontent.com/AhmedLSayed9/shopzler/master/assets/images/icons/account.png")),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).colorScheme.onPrimary,
          onTap: _onItemTapped,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(opacity: 0),
          unselectedIconTheme: IconThemeData(opacity: 10),
        ));
  }
}
