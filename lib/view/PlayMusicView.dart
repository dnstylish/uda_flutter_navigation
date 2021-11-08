import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uda_home/components/PlayMusicBanner.dart';
import 'package:uda_home/viewmodel/PlayMusicViewModel.dart';

import '../const.dart';

class PlayMusicView extends StatelessWidget {
  PlayMusicView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PlayMusicViewModel>.reactive(
      viewModelBuilder: ()=> PlayMusicViewModel(),
      // onModelReady: (viewModel) => viewModel.setSample(),
      builder: (context, viewModel, child)
        => AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: viewModel.music == null ? NoMusicView() : PlayMusicContentView(),
        ),
    );
  }
}

class NoMusicView extends ViewModelWidget<PlayMusicViewModel> {
  const NoMusicView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, PlayMusicViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kPrimary),
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100),
          Image.asset('images/file_not_found.jpg', height: 200),

          Text("Chọn nhac để nghe nào!!", style: TextStyle(color: kPrimary, fontStyle: FontStyle.italic, fontSize: 14)),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MusicButton(
                  color: Colors.deepPurpleAccent,
                  title: Text("Quay Lại", style: TextStyle(color: Colors.white)),
                  callback: () {

                    Navigator.of(context).pop();

                  },
              ),

             SizedBox(width: 16),

              MusicButton(
                color: Colors.pinkAccent,
                title: Text("Chọn Nhạc", style: TextStyle(color: Colors.white)),
                callback: () {

                  viewModel.waitSelectedMusic(context);

                },
              )
            ],
          )
        ],
      ),
    );
  }
}

class MusicButton extends StatelessWidget {
  MusicButton({Key? key, required this.color, required this.title, required this.callback}) : super(key: key);

  final Color color;
  final Widget title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback();
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: color,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: title,
        ),
      ),
    );
  }
}

class PlayMusicContentView extends ViewModelWidget<PlayMusicViewModel> {
  PlayMusicContentView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, PlayMusicViewModel viewModel) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(viewModel.music!.name),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
              onPressed: () { viewModel.waitSelectedMusic(context); },
              icon: Icon(Icons.reorder, color: Colors.white)
          )
        ],
      ),
      body: ListView(
        children: [

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical:30),
            child: Image.asset(
                viewModel.music!.avatar
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                        viewModel.music!.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 20
                        )
                    ),

                    SizedBox(height: 10),
                    
                    Text(viewModel.music!.author, style: TextStyle(color: Colors.grey))

                  ],
                ),

                Spacer(),

                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite, color: Colors.white.withOpacity(0.9))
                )

              ],
            ),
          ),
          
          // Play process
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Row(
              children: [

                Text("0", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),

                Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: PlayMusicPlaceholder(maxWidth: MediaQuery.of(context).size.width - 16 * 3, maxHeight: 30, spacing: 15),
                    )
                ),

                Text(
                    viewModel.totalTime(),
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)
                )

              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shuffle, color: Colors.grey)
                ),

                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous, color: Colors.grey)
                ),

                TextButton(
                    onPressed: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Colors.deepPurpleAccent,
                        child: Center(
                          child: Icon(Icons.play_arrow, color: Colors.white, size: 50),
                        ),
                      ),
                    )
                ),

                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next, color: Colors.grey)
                ),

                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.repeat_one, color: Colors.grey)
                )

              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                    "Speaker",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )
                ),

                SizedBox(height: 15),

                Row(
                  children: viewModel.music!.speakers.map(
                          (e) => Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Column(
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(70),
                                  child: Image.asset(e.avatar, width: 70, height: 70,),
                                ),

                                SizedBox(height: 8),

                                Text(e.name, style: TextStyle(color: Colors.grey, fontSize: 13))

                              ],
                            ),
                          )
                  ).toList(),
                )

              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                    "Content",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )
                ),

                SizedBox(height: 10),

                Text(viewModel.music!.content, style: TextStyle(color: Colors.grey, height: 1.8))

              ],
            ),
          ),

        ],
      ),
    );
  }
}



