import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Moda App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            indicatorColor: Colors.brown.withOpacity(0.2),
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.more,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.grey,
                  size: 22,
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Fashion Moda Application",
          style: TextStyle(
              fontFamily: "Montserat",
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          Container(
            color: Colors.transparent,
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listeEleman("assets/model1.jpeg", "assets/chanellogo.jpg"),
                const SizedBox(width: 25),
                listeEleman("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                const SizedBox(width: 25),
                listeEleman("assets/model3.jpeg", "assets/chloelogo.png"),
                const SizedBox(width: 25),
                listeEleman("assets/model1.jpeg", "assets/chanellogo.jpg"),
                const SizedBox(width: 25),
                listeEleman("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                const SizedBox(width: 25),
                listeEleman("assets/model3.jpeg", "assets/chloelogo.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Material(
              //color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(14),
              elevation: 4,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/model1.jpeg",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                  fontFamily: "Montserat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "34 mins ago",
                                style: TextStyle(
                                  fontFamily: "Montserat",
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.more_vert,
                            color: Colors.grey, size: 22),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "This offical website features a ribbed knit zipper jackket that is"
                      "modern and stylish. It looks  very tapmrement and is recommed to friends",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Montserat",
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Detay(
                                  imgPath: "assets/modelgrid1.jpeg",
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/modelgrid1.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Detay(
                                      imgPath: "assets/modelgrid2.jpeg",
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid2.jpeg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Detay(
                                      imgPath: "assets/modelgrid3.jpeg",
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              "#Louis vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserat",
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              "#Chloe",
                              style: TextStyle(
                                  fontFamily: "Montserat",
                                  fontSize: 10,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.reply_all,
                            color: Colors.brown.withOpacity(0.2), size: 30),
                        const SizedBox(width: 10),
                        const Text("1.7k",
                            style: TextStyle(
                                fontFamily: "Montserat", fontSize: 16)),
                        const SizedBox(width: 20),
                        Icon(Icons.comment,
                            color: Colors.brown.withOpacity(0.2), size: 30),
                        const SizedBox(width: 10),
                        const Text("372",
                            style: TextStyle(
                                fontFamily: "Montserat", fontSize: 16)),
                        Container(
                          width: MediaQuery.of(context).size.width - 222,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Icon(Icons.favorite,
                                    color: Colors.red, size: 30),
                                SizedBox(width: 10),
                                Text("3.4k",
                                    style: TextStyle(
                                        fontFamily: "Montserat", fontSize: 16)),
                              ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  listeEleman(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: const Center(
            child: Text(
              "Fallow",
              style: TextStyle(
                  fontFamily: "Montserat", fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
