import 'package:next_hour/app/modules/utilities/strings/image_strings.dart';

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
