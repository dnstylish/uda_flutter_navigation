import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uda_home/view/PlayMusicView.dart';

import '../const.dart';

class PlayMusicBanner extends StatelessWidget {
  const PlayMusicBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Text(
            "Nghe Nhạc",
            style: kLabelStyle,
          ),

          SizedBox(
            height: 16,
          ),

          InkWell(
            onTap: () {

              Navigator.push(context,MaterialPageRoute(builder: (context) => PlayMusicView()));

            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                color: Colors.deepPurpleAccent,
                child: Row(
                  children: [


                    Icon(Icons.play_arrow, color: Colors.white),

                    SizedBox(width: 5),

                    Expanded(
                        child: PlayMusicPlaceholder(maxWidth: MediaQuery.of(context).size.width - 16 * 3, maxHeight: 30, spacing: 15)
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlayMusicPlaceholder extends StatelessWidget {
  PlayMusicPlaceholder({Key? key, required this.maxWidth, required this.maxHeight, required this.spacing}) : super(key: key);

  final double maxWidth;
  final int maxHeight;
  final double spacing;



  List<double> _createList(double maxWidth) {

    Random random = Random();

    List<double> result = [];

    result.add(5);

    final int maxLength = (maxWidth / spacing).round() - 2;

    for (int i = 0 ; i < maxLength; i++) {

      result.add(random.nextInt(maxHeight).toDouble() + 10);

    }

    result.add(5);

    return result;

  }

  @override
  Widget build(BuildContext context) {

    final list = _createList(maxWidth);


    return Stack(
      children: [

        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: list.map(
                    (e) => ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    color: Colors.white,
                    width: 5,
                    height: e,
                  ),
                )
            ).toList()
        ),

        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Center(
            child:  Container(
              width: maxWidth,
              height: 1,
              color: Colors.white,
            ),
          )
        )

      ],
    );
  }
}

