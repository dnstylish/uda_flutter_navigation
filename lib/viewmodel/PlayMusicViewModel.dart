import 'package:flutter/material.dart';
import 'package:uda_home/model/music.dart';
import 'package:uda_home/view/ListMusicView.dart';

class PlayMusicViewModel extends ChangeNotifier {

  Music? music;

  Future<void> waitSelectedMusic(BuildContext ctx) async {

    music = await Navigator.push(ctx,MaterialPageRoute(builder: (context) => ListMusicView(currentMusic: music)));

    notifyListeners();

  }

  void setSample() {

    music = musics.first;

    notifyListeners();

  }

  String totalTime() {

    if (music == null) {
      return '00:00';
    }

    final int time1 = (music!.time! / 60 ).round();
    final int time2 = music!.time! - time1 * 60;

    return '$time1 : ${time2 > 0 ? time2 : "00"}';

  }

}