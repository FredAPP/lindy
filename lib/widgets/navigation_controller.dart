import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lindyapp/pages/articles_page.dart';
import 'package:lindyapp/pages/credits_page.dart';
import 'package:lindyapp/pages/events_page.dart';
import 'package:lindyapp/pages/moves_page.dart';
import 'package:lindyapp/pages/playlists_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavigationController extends StatelessWidget {
  NavigationController({Key key}) : super(key: key);
  PersistentTabController _controller;

  @override
  Widget build(BuildContext context) {
    _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        ArticlesPage(),
        // EventsPage(),
        MovesPage(),
        // PlaylistsPage(),
        CreditsPage(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.library_books_outlined),
          title: ("Articles"),
          activeColor: Color.fromRGBO(60, 65, 133, 1),
          inactiveColor: Color.fromRGBO(60, 65, 133, 0.5),
        ),
        // PersistentBottomNavBarItem(
        //   icon: Icon(Icons.calendar_today),
        //   title: ("Events"),
        //   activeColor: Color.fromRGBO(60, 65, 133, 1),
        //   inactiveColor: Color.fromRGBO(60, 65, 133, 0.5),
        // ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.directions_run),
          title: ("Moves"),
          activeColor: Color.fromRGBO(60, 65, 133, 1),
          inactiveColor: Color.fromRGBO(60, 65, 133, 0.5),
        ),
        // PersistentBottomNavBarItem(
        //   icon: Icon(Icons.playlist_play),
        //   title: ("Playlists"),
        //   activeColor: Color.fromRGBO(60, 65, 133, 1),
        //   inactiveColor: Color.fromRGBO(60, 65, 133, 0.5),
        // ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.info_outline),
          title: ("Profile"),
          activeColor: Color.fromRGBO(60, 65, 133, 1),
          inactiveColor: Color.fromRGBO(60, 65, 133, 0.5),
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      backgroundColor: Color.fromRGBO(232, 213, 173, 1),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      decoration: NavBarDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        colorBehindNavBar: Color.fromRGBO(60, 65, 133, 1),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style8, // Choose the nav bar style with this property.
    );
  }
}
