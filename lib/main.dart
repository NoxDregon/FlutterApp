import 'package:flutter/material.dart';

void main() => runApp(GameStart());

class GameStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage());
  }
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.house),
        label: 'info',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.edit),
        label: 'booking',
      ),
    ]));
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    var safeArea = SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  "https://i.imgur.com/495wVqth.jpg",
                  fit: BoxFit.cover,
                ),
                Text(
                  "Игыр для тех \nКому важна\nПроизводительность",
                  style: TextStyle(
                    color: Colors.white12,
                  ),
                )
              ],
            ),
            height: 750.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white12, image: DecorationImage(image: new NetworkImage("https://i.imgur.com/LIXLQQAh.jpg"), fit: BoxFit.cover)),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "ТОПОВОЕ ИГРОВОЕ \nПРОСТРАНСТВО ДЛЯ ВСЕХ",
                  style: TextStyle(
                    color: Colors.white12,
                  ),
                ),
                Text(
                  "◊ Загрузка твоих любимых игр",
                  style: TextStyle(
                    color: Colors.white12,
                  ),
                ),
                Text(
                  "◊ Высокая производительность станций",
                  style: TextStyle(
                    color: Colors.white12,
                  ),
                ),
                Text(
                  "◊ Почасовые тарифы",
                  style: TextStyle(
                    color: Colors.white12,
                  ),
                ),
                Text(
                  "◊ Кафитерий",
                  style: TextStyle(
                    color: Colors.white12,
                  ),
                ),
                Text(
                  "◊ Приятная атмасфера в соаременном игровом интерьере",
                  style: TextStyle(
                    color: Colors.white12,
                  ),
                ),
                Text(
                  "◊ Приятная атмосфера в современном игровом интерьере",
                  style: TextStyle(
                    color: Colors.white12,
                  ),
                ),
              ],
            ),
            height: 700.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white12,
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Игровое железо",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      "https://i.imgur.com/SjoL0Bhh.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://i.imgur.com/rxcewyOh.jpg",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.network("https://i.imgur.com/M1tt8z9h.jpg", fit: BoxFit.cover),
                    Text(
                      "STANDART \n40 Укомплектованных игровых мест \nКомпьютеры подходящие для всех основных игр \nНизкий прайс",
                      style: TextStyle(),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "AMD Ryzen 5 2600",
                      style: TextStyle(
                        color: Colors.white12,
                      ),
                    ),
                    Text(
                      "RTX 2060",
                      style: TextStyle(
                        color: Colors.white12,
                      ),
                    ),
                    Text(
                      "16 GB DDR4",
                      style: TextStyle(
                        color: Colors.white12,
                      ),
                    ),
                    Text(
                      "2TB SSD M2",
                      style: TextStyle(
                        color: Colors.white12,
                      ),
                    )
                  ],
                ),
              ],
            ),
            height: 500.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "НОВОСТИ НАШЕГО КЛУБА",
                  style: TextStyle(color: Colors.white),
                ),
                Image.network(
                  "https://i.imgur.com/S28uDoRh.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
            height: 350.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white12,
            ),
          ),
        ]),
      ),
    );
    return Scaffold(
      body: safeArea,
    );
  }
}
