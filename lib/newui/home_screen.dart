import 'package:flutter/material.dart';
import 'package:flutter_prectice/newui/swiper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  int currentIndex = 0;

  void SelectIndexBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'My Diary',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 10, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.black54,
                      size: 20,
                    ),
                    Text(
                      "6 Dec",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black54,
                      size: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Meditarean diet",
                    style: TextStyle(
                        color: Color.fromARGB(255, 64, 63, 63),
                        fontSize: 23,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Text(
                        "Details",
                        style: TextStyle(
                            color: Color.fromARGB(255, 119, 189, 246),
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color.fromARGB(255, 62, 63, 63),
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 247, 243, 243),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(child: SwiperCard()),
            ],
          )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Home',
            ),
          ],
        ));
  }
}
