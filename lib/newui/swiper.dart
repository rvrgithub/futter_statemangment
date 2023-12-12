import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';

class SwiperCard extends StatefulWidget {
  const SwiperCard({super.key});

  @override
  State<SwiperCard> createState() => _SwiperCardState();
}

class _SwiperCardState extends State<SwiperCard> {
  @override
  Widget build(BuildContext context) {
    return  Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            "https://via.placeholder.com/150x50",
          height: 100,width: 50,
          );         
        },
        itemCount: 3,
        // pagination: SwiperPagination(),
        // control: SwiperControl(),
    );
  }
}
