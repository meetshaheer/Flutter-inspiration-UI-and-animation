import 'package:flutter/material.dart';

class InspirationApp extends StatelessWidget {
  const InspirationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Uncover Your",
                      style: TextStyle(color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Imagination",
                      style: TextStyle(color: Colors.black, fontSize: 48, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22), color: const Color.fromRGBO(245, 243, 243, 1)),
                      padding: const EdgeInsets.all(6),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for what you need.",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 185, 185, 185), fontSize: 20, fontWeight: FontWeight.w300),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Promo Today",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard('assets/images/one.jpg', "Hill View", 2.2, 3),
                          promoCard('assets/images/two.jpg', "Church View", 2.2, 3),
                          promoCard('assets/images/three.jpg', "Amusement", 2.2, 3),
                          promoCard('assets/images/four.jpg', "CN Tower", 2.2, 3),
                          promoCard('assets/images/five.png', "Bulb View", 2.2, 3),
                          promoCard('assets/images/siz.png', "Old Church", 2.2, 3),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/banner.jpg'),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: [0.4, 0.9],
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.1),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Toronto Travel",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget promoCard(image, title, ratio1, ratio2) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: AspectRatio(
      aspectRatio: ratio1 / ratio2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.1, 0.9],
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
