import 'package:flutter/material.dart';
import 'package:next_hour/app/modules/utilities/strings/image_strings.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(15, 14, 0, 5),
            child: const Text(
              "Recent",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                InkWell(
                  // onTap: () => playVideo(data[0]["VideoURL"]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 85,
                        width: 120,
                        child: Image.network(
                          blackPanterThumnail,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            width: 90,
                            child: Text(
                              blackPantertitle,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(18, 0, 0, 10),
                            child: InkResponse(
                              onTap: () {},
                              radius: 20,
                              child: const Icon(
                                Icons.more_vert,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  // onTap: () => playVideo(data[1]["VideoURL"]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 85,
                        width: 120,
                        child: Image.network(
                          blackAdamThumnail,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            width: 90,
                            child: Text(
                              blackAdamtitle,
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(18, 0, 0, 10),
                            child: InkResponse(
                              onTap: () {},
                              radius: 20,
                              child: const Icon(
                                Icons.more_vert,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  // onTap: () => playVideo(data[2]["VideoURL"]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 85,
                        width: 120,
                        child: Image.network(
                          eagleThumnail,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            width: 90,
                            child: Text(
                              eagleTitle,
                              style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(18, 0, 0, 10),
                            child: InkResponse(
                              onTap: () {},
                              radius: 20,
                              child: const Icon(
                                Icons.more_vert,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1.3,
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              "History",
              style: TextStyle(),
            ),
            leading: const Icon(
              Icons.history,
              color: Colors.grey,
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Downloads"),
            subtitle: const Text(
              "40 recommendations",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            leading: const Icon(
              Icons.file_download,
              color: Colors.grey,
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text("My videos"),
            leading: const Icon(
              Icons.video_library,
              color: Colors.grey,
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Purchase"),
            leading: const Icon(
              Icons.local_offer,
              color: Colors.grey,
            ),
          ),
          ListTile(
            onTap: () {},
            title: const Text("Watch later"),
            subtitle: const Text(
              "153 unwatched videos",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            leading: const Icon(
              Icons.watch_later,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
