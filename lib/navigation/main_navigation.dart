import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import '../screens/home_screen.dart';
import '../screens/top_movies_screen.dart';
import '../screens/profile_screen.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  List<PersistentTabConfig> _tabs() => [
    PersistentTabConfig(
      screen: const HomeScreen(),
      item: ItemConfig(
        icon: const Icon(Icons.home),
        title: "Home",
        activeForegroundColor: Colors.red.shade700,
        inactiveForegroundColor: Colors.grey,
      ),
    ),
    PersistentTabConfig(
      screen: const TopMoviesScreen(),
      item: ItemConfig(
        icon: const Icon(Icons.local_fire_department),
        title: "Top Movies",
        activeForegroundColor: Colors.red.shade700,
        inactiveForegroundColor: Colors.grey,
      ),
    ),
    PersistentTabConfig(
      screen: const ProfileScreen(),
      item: ItemConfig(
        icon: const Icon(Icons.person),
        title: "Profile",
        activeForegroundColor: Colors.red.shade700,
        inactiveForegroundColor: Colors.grey,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: _tabs(),
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(color: Colors.grey[900]!),
      ),
    );
  }
}
