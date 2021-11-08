import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:uda_home/const.dart';
import 'package:uda_home/viewmodel/PrefViewModel.dart';

class BottomTabBar extends ViewModelWidget<PrefViewModel> {

  @override
  Widget build(BuildContext context, PrefViewModel viewModel) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_answer),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.signal_cellular_alt),
          label: 'Char',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map',
        ),
      ],
      currentIndex: viewModel.tab,
      selectedItemColor: kAccent,
      unselectedItemColor: kPrimary,
      onTap: (int index) {
        viewModel.changeTab(index);
      },
    );
  }

}