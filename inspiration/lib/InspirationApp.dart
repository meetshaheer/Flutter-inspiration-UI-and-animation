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
                SizedBox(
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
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
