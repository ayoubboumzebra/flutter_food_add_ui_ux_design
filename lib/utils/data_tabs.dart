import 'package:coffe_app/model/tabs.dart';
import 'package:flutter/material.dart';

List<Tabs> getTabsData() {
  return [
    Tabs(title: 'Home', icon: Icons.dashboard, isSelected: true),
    Tabs(title: 'Coffe', icon: Icons.local_drink, isSelected: false),
    Tabs(title: 'Search', icon: Icons.search, isSelected: false),
    Tabs(title: 'Settings', icon: Icons.settings, isSelected: false),
    Tabs(title: 'More', icon: Icons.more_vert, isSelected: false),
  ];
}
