import 'package:flutter/material.dart';

class PlayLists extends StatelessWidget {
  var playlists = [
    "https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_default.jpg",
    "https://images.squarespace-cdn.com/content/v1/5b3e4e8796d455cefb9853a3/1583588270424-S1K3BDPP8JOWH895PYFM/cq.jpg",
    "https://mir-s3-cdn-cf.behance.net/project_modules/hd/137625112577745.60177189ef503.png",
    "https://i.scdn.co/image/ab67706f00000002f2d08778548e125bcb867692",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw0WQlxhT0GLhBy8TIRXI3yxtNMEznv-hS-Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbao_n2koIED4Q6UKFD4lowbM75j5p3McuLA&usqp=CAU",
    "https://i.scdn.co/image/ab67706c0000da84c95e899030ec4756f51e7944",
    "https://i.scdn.co/image/ab67616d0000b273760921b9de555a27f9f79322",
    "https://i.scdn.co/image/ab67706c0000da84f51379891c5259dc59f0db6b",
    "https://source.boomplaymusic.com/group10/M00/06/13/4c5c2decedb1445396f982088ff022c7_464_464.jpg",
    "https://source.boomplaymusic.com/group10/M00/05/09/d228930591da4de68bce21bfa8d246c4_464_464.jpg",
    "https://i1.sndcdn.com/avatars-000136741610-6wkjm5-t500x500.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisSpacing: 15,
          // crossAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(playlists[index]))),
            ),
          );
        });
  }
}
