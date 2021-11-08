import 'package:flutter/material.dart';
import 'package:uda_home/const.dart';
import 'package:uda_home/model/music.dart';

class ListMusicView extends StatelessWidget {
  const ListMusicView({Key? key, this.currentMusic}) : super(key: key);

  final Music? currentMusic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Danh Sách Bài Hát"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(currentMusic),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: musics.length,
          itemBuilder: (BuildContext ctx, int index) {

            final Music music = musics[index];

            return Column(
              children: [

                InkWell(
                  onTap: () {

                    Navigator.of(context).pop(music);

                  },
                  child: Container(
                    height: 130,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    child: Stack(
                      children: [
                        Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              child: Center(
                                child: Text("${index + 1}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                              ),
                              width: 40,
                            ),

                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Image.asset(music.avatar, width: 90, height: 90).image
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(music.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), maxLines: 1),

                                  SizedBox(height: 8),

                                  Text(music.author, style: TextStyle(fontSize: 16, color: Color(0xFF646464)), maxLines: 1),

                                  Spacer(),

                                  Row(
                                    children: [

                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Container(
                                          color: Colors.black.withOpacity(0.8),
                                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                          child: Row(
                                            children: [

                                              Icon(Icons.play_arrow, color: Colors.white, size: 14),

                                              SizedBox(width: 3),

                                              Text("Play Song", style: TextStyle(color: Colors.white, fontSize: 11))

                                            ],
                                          ),
                                        ),
                                      ),

                                    ],
                                  )

                                ],
                              ),
                            )

                          ],
                        ),

                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Icon(Icons.more_vert, color: kPrimary)
                        )

                      ],
                    ),
                  ),
                ),
                Divider()

              ],
            );
          }
      ),
    );
  }
}
