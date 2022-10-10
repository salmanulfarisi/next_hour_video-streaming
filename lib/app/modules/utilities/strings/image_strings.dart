// -- Onboarding Images--
import 'package:flutter/material.dart';

const String onboardigImage1 =
    'assets/undraw_Welcome_re_h3d9-removebg-preview.png';
const String onboardigImage2 =
    'assets/undraw_Trends_re_2bd0-removebg-preview.png';
const String onboardigImage3 =
    'assets/undraw_Video_streaming_re_v3qg-removebg-preview.png';
// --video model--
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
String ema =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcHTGPAFCmNAZtUyVW8XVXe80xXac5soV3rg&usqp=CAU';
// --- video string ----
final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
];

const imageAppentUrl = "https://image.tmdb.org/t/p/w500";

ValueNotifier<Set<int>> likedVideosNotifier = ValueNotifier({});
ValueNotifier<Set<int>> addedMyListNotifier = ValueNotifier({});
