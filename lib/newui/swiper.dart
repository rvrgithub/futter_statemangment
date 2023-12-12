import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class SwiperCard extends StatefulWidget {
  const SwiperCard({Key? key}) : super(key: key);

  @override
  State<SwiperCard> createState() => _SwiperCardState();
}

class _SwiperCardState extends State<SwiperCard> {
  List<CardData> cardDataList = [
    CardData("BreakFast", "Bread penut button Apple ",
        Color.fromARGB(255, 98, 99, 181), Icons.star),
    CardData(
        "Lunch", "Salmon ", Color.fromARGB(255, 0xE4, 0x3E, 0x5D), Icons.code),
    CardData("Snack", "Recomnadation ", Color.fromARGB(255, 244, 109, 88),
        Icons.credit_card),
  ]; // Example data for each card

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            width: 10,
            height: 100,
            decoration: BoxDecoration(
              color: cardDataList[index].color.withOpacity(0.7),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(80.0),
                bottomRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                  // alignment:Alignment.topRight,
                    children:[
                      Image.asset(
                        'https://img.lovepik.com/free-png/20211212/lovepik-apple-and-cut-apple-png-image_401518199_wh1200.png',  width: 10,
                        height: 10,),]
                  ),
                  SizedBox(height: 8),
                  Text(
                    cardDataList[index].heading,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    cardDataList[index].content,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Expanded(
                    child: Positioned(
                      top: 8,
                      right: 8,
                      child: Image.asset(
                        'https://img.lovepik.com/free-png/20211212/lovepik-apple-and-cut-apple-png-image_401518199_wh1200.png', // Replace with your image asset path
                        width: 10,
                        height: 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: cardDataList.length,
      viewportFraction: 0.4,
      scale: 1,
      // pagination: SwiperPagination(),
      // control: SwiperControl(),
    );
  }
}

class CardData {
  final String heading;
  final String content;
  final Color color;
  final IconData icon;

  CardData(this.heading, this.content, this.color, this.icon);
}
