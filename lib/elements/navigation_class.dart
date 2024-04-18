import 'package:flutter/material.dart';
import 'package:responsive_design/pages/about.dart';
import 'package:responsive_design/pages/home.dart';
import 'package:responsive_design/pages/setting.dart';
import '../pages/profile.dart';

class SideNavigation {
  String name;
  IconData icon;
  Widget child;
  SideNavigation(this.name, this.icon, this.child);
}

List<SideNavigation> navigationList = [
  SideNavigation('Home', Icons.home, const Home()),
  SideNavigation('Settings', Icons.settings, const Setting()),
  SideNavigation('About', Icons.info, const About()),
  SideNavigation('Profile', Icons.person, const Profile()),
];