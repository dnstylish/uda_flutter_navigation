class Music {

  final String name;
  final String avatar;
  final String author;
  final String content;
  final String createdAt;
  final String updatedAt;
  final List<Speaker> speakers;
  int? time = 240;

  Music({
    required this.name,
    required this.avatar,
    required this.author,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.speakers,
  });

}

class Speaker {

  final String name;
  final String avatar;
  
  Speaker({ required this.name, required this.avatar });

}

final List<Music> musics = [
  
  Music(
      name: "Cold Heart (PNAU Remix)",
      avatar: "images/m1.jpeg",
      author: "Elton John & Dua Lipa",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "28 - 29 Jun 2021",
      updatedAt: "4PM - 6PM",
      speakers: [
        Speaker(name: "Elton John", avatar: "images/m1.jpeg"),
        Speaker(name: "Dua Lipa", avatar: "images/dua-lipa.jpeg")
      ]
  ),
  Music(
      name: "Run Now - Chạy Ngay Đi",
      avatar: "images/ms2.jpg",
      author: "Sơn Tùng MTP",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "2020",
      updatedAt: "0AM",
      speakers: [
        Speaker(name: "Sơn Tùng MTP", avatar: "images/sg2.jpg"),
      ]
  ),
  Music(
      name: "Chúng Ta Của Hiện Tại",
      avatar: "images/ms3.jpg",
      author: "Sơn Tùng MTP",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "2021",
      updatedAt: "0AM",
      speakers: [
        Speaker(name: "Sơn Tùng MTP", avatar: "images/sg2.jpg"),
      ]
  ),
  Music(
      name: "Nắm Đôi Bàn Tay",
      avatar: "images/ms4.jpg",
      author: "Kay Trần",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "2021",
      updatedAt: "10PM",
      speakers: [
        Speaker(name: "Kay Trần", avatar: "images/ms4.jpg"),
        Speaker(name: "Sơn Tùng MTP", avatar: "images/sg2.jpg")
      ]
  ),
  Music(
      name: "Hoa Hải Đường",
      avatar: "images/ms5.jpg",
      author: "Jack",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "2021",
      updatedAt: "0AM",
      speakers: [
        Speaker(name: "Jack", avatar: "images/jack.jpg"),
      ]
  ),
  Music(
      name: "Hold On",
      avatar: "images/ms6.jpg",
      author: "Justin Bieber",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "2021",
      updatedAt: "12AM",
      speakers: [
        Speaker(name: "Justin Bieber", avatar: "images/justin.jpg"),
      ]
  ),
  Music(
      name: "See You Again",
      avatar: "images/ms7.jpg",
      author: "Wiz Khalifa ft Charlie Puth",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "07 Apr 2015",
      updatedAt: "12AM",
      speakers: [
        Speaker(name: "Wiz Khalifa", avatar: "images/wiz.png"),
        Speaker(name: "Charlie Puth", avatar: "images/chputh.jpg")
      ]
  ),
  Music(
      name: "FACE(페이스)",
      avatar: "images/ms8.jpg",
      author: "NU'EST",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "14 Mar 2012",
      updatedAt: "0AM",
      speakers: [
        Speaker(name: "NU'EST", avatar: "images/ms8.jpg"),
      ]
  ),
  Music(
      name: "Phía Sau Em",
      avatar: "images/ms9.jpg",
      author: "Kay Trần ft Binz",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "20 Nov 2015",
      updatedAt: "12PM",
      speakers: [
        Speaker(name: "Kay Trần", avatar: "images/ms4.jpg"),
        Speaker(name: "Binz", avatar: "images/binz.jpg"),
      ]
  ),
  Music(
      name: "BigCityBoi",
      avatar: "images/ms10.jpg",
      author: "Binz ft Touliver",
      content: "It's a human sign When things go wrong When the scent of her lingers And temptation's strong Cold, cold heart Hard done by you Some things looking better, baby Just passing through (oh, no, no, no, no)",
      createdAt: "05 July 2020",
      updatedAt: "7PM",
      speakers: [
        Speaker(name: "Binz", avatar: "images/binz.jpg"),
        Speaker(name: "Touliver", avatar: "images/tou.jpg")
      ]
  ),
  
];