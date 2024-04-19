import 'package:flutter/material.dart';
import 'package:responsive_design/pages/about.dart';
import 'package:responsive_design/pages/home.dart';
import 'package:responsive_design/pages/setting.dart';
import '../pages/garden.dart';

class SideNavigation {
  String name;
  IconData icon;
  Widget child;
  SideNavigation(this.name, this.icon, this.child);
}

List<SideNavigation> navigationList = [
  SideNavigation('Home', Icons.home_outlined, const Home()),
  SideNavigation('Settings', Icons.settings_outlined, const Setting()),
  SideNavigation('About', Icons.info_outline, const About()),
  SideNavigation('Garden', Icons.energy_savings_leaf_outlined, const Garden()),
];