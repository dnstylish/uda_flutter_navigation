import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uda_home/components/BottomTabBar.dart';
import 'package:uda_home/components/GridView/CitiesView.dart';
import 'package:uda_home/components/GridView/FellowsView.dart';
import 'package:uda_home/components/HomeSwiper.dart';
import 'package:uda_home/components/PlayMusicBanner.dart';
import 'package:uda_home/routes.dart';
import 'package:uda_home/viewmodel/PrefViewModel.dart';

import '../const.dart';
import 'ExampleWidget.dart';

class HomeView extends ViewModelWidget<PrefViewModel>  {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, PrefViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('images/logo.png', height: 30),
        backgroundColor: Colors.white,
        actions: [


          IconButton(
              onPressed: () {

                Navigator.of(context).pushNamed(Routes.sliders);
                
              },
              icon: Icon(Icons.notifications, color: kPrimary)
          ),


          IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: kPrimary)
          )
        ],
      ),
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: viewModel.tab == 0 ? NewFeedsView() : ExampleWidget(),
      ),
      bottomNavigationBar: BottomTabBar(),
    );
  }
}

class NewFeedsView extends StatelessWidget {
  const NewFeedsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeSwiper(),

        PlayMusicBanner(),

        CitiesView(),

        FellowsView(),

        CitiesView()

      ],
    );
  }
}
