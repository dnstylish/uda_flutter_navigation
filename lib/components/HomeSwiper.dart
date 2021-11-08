import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';

import 'package:uda_home/model/slider.dart';
import 'package:uda_home/view/SlideList.dart';

class HomeSwiper extends StatelessWidget {
  const HomeSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(

        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SlideListView())),

        child: Swiper(
          itemCount: sliders.length,
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              child: Image.asset(sliders[index].image, fit: BoxFit.cover),
            );
          },
          pagination: SwiperPagination(),
        ),
      ),
      height: MediaQuery.of(context).size.width * 600 / 1125,
    );
  }
}
