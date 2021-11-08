import 'package:flutter/material.dart';
import 'package:uda_home/model/slider.dart';

import '../const.dart';

class SlideListView extends StatelessWidget {
  const SlideListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('images/logo.png', height: 30),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: kPrimary)
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.person, color: kPrimary)
          )
        ],
      ),
      body: ListView.builder(
          itemCount: sliders.length,
          itemBuilder: (BuildContext ctx, int index) => Image.asset(
            sliders[index].image,
            width: double.infinity,
          )
      ),
    );
  }
}
