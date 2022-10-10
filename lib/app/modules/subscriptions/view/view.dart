import 'package:flutter/material.dart';
import 'package:next_hour/app/modules/utilities/strings/image_strings.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 15, 10, 7),
                              child: InkResponse(
                                onTap: () {},
                                containedInkWell: false,
                                radius: 45,
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: NetworkImage(
                                    eagelAvatar,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(12, 0, 15, 7),
                              child: const Text(
                                "Saksham",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ),
                          ],
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                child: MaterialButton(
                  onPressed: () {},
                  height: 110,
                  color: const Color(0xff303030),
                  minWidth: 10,
                  child: const Text(
                    "ALL",
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Divider(
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                    children: <Widget>[
                      GestureDetector(
                        // onTap: () => playVideo(data[index]['VideoURL']),
                        child: SizedBox(
                          width: double.infinity,
                          child: Image.network(
                            eagleThumnail,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(12, 12, 16, 15),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(eagelAvatar),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  eagleTitle,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 3),
                                  child: const Text(
                                    'eagle gaming'
                                    " "
                                    "10M"
                                    " views "
                                    " 10 Days",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
