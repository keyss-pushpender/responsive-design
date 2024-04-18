import 'package:flutter/material.dart';
import 'package:responsive_design/pages/about.dart';
import 'package:responsive_design/pages/home.dart';
import 'package:responsive_design/pages/setting.dart';
import '../pages/profile.dart';

class Navigation {
  String name;
  IconData icon;
  Widget child;
  Navigation(this.name, this.icon, this.child);
}

List<Navigation> navigationList = [
  Navigation('Home', Icons.home, const Home()),
  Navigation('Settings', Icons.settings, const Setting()),
  Navigation('About', Icons.info, const About()),
  Navigation('Profile', Icons.person, const Profile()),
];