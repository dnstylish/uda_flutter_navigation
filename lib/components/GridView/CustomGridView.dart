import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uda_home/const.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({Key? key, required this.title, required this.itemCount, required this.builder}) : super(key: key);

  final String title;
  final int itemCount;
  final Widget Function(int index) builder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kLabelStyle,
          ),

          SizedBox(
            height: 10,
          ),

          SizedBox(
            height: MediaQuery.of(context).size.width / 3 * 360 / 260 + 40 ,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              primary: true,
              crossAxisCount: 2, //Screensize grid count
              childAspectRatio: 260 / 360, //1.0
              mainAxisSpacing: 20, //1.0
              crossAxisSpacing: 20, //1.0
              children: [
                for (var i = 0; i < itemCount; i++) builder(i)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomGridItem extends StatelessWidget {
  CustomGridItem({Key? key, required this.name, required this.avatar, required this.city}) : super(key: key);

  final String city;
  final String avatar;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [

            // image bg
            ColorFiltered(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3),
                    BlendMode.color
                ),
              child: Image.asset(
                avatar,
                fit: BoxFit.cover,
              ),
            ),

            // title
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  SizedBox(
                    width: 50,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2,
                      height: 5,
                    ),
                  ),


                  Text(
                    city,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}

