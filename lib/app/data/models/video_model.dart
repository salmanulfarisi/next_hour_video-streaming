class VideoModel {
  String? thumnail;
  String? videotitle;
  String? videoDuration;
  String? avatar;
  String? channel;
  String? views;
  String? date;

  VideoModel(
    this.thumnail,
    this.videotitle,
    this.videoDuration,
    this.channel,
    this.avatar,
    this.views,
    this.date,
  );
}

List<VideoModel> items = [
  VideoModel(
    blackAdamThumnail,
    blackAdamtitle,
    '2:18',
    'Warner Bros. Pictures',
    blackAdamavatarImage,
    '25M views',
    '3 months ago',
  ),
  VideoModel(
      blackPanterThumnail,
      blackPantertitle,
      '2:18',
      'Marvel Entertainment',
      blackPantherAvatarImage,
      '51M views',
      '4 years ago'),
  VideoModel(
    eagleThumnail,
    eagleTitle,
    '3:49:35',
    'Eagle Gaming',
    eagelAvatar,
    '129k views',
    '1 month ago',
  )
];

String blackAdamThumnail =
    'https://i.ytimg.com/vi/cOU3ZTPsKuo/maxresdefault.jpg';
String blackAdamtitle = 'Black Adam – Official Trailer 1';
String blackAdamavatarImage =
    'https://yt3.ggpht.com/Dd84-7pxMM5DvXGwsEoLv5NMdyeEJnGxhe0rtDuJslFN3YUKCOhN5R7n8--B6g33kPNV2Pv8Q28=s176-c-k-c0x00ffffff-no-rj';
String blackPanterThumnail = 'https://i.ytimg.com/vi/zYHLd94BLu0/mqdefault.jpg';
String blackPantertitle = "Marvel Studios' Black Panther - Official Trailer";
String blackPantherAvatarImage =
    'https://yt3.ggpht.com/fGvQjp1vAT1R4bAKTFLaSbdsfdYFDwAzVjeRVQeikH22bvHWsGULZdwIkpZXktcXZc5gFJuA3w=s48-c-k-c0x00ffffff-no-rj';
String eagleThumnail =
    'https://media.discordapp.net/attachments/845765157421318184/1020985316917657661/20220918_143757.jpg';
String eagleTitle = 'HAPPY SUNDAY - EAGLE GAMING';
String eagelAvatar =
    'https://yt3.ggpht.com/ytc/AMLnZu8jh2DjW66SlYILQuc5Jb1iybqIVRmysB8z_QGufg=s176-c-k-c0x00ffffff-no-rj';
