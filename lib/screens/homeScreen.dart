// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/widgets/uiWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text("User"),
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  )),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              const SizedBox(
                width: 20,
              )
            ],
            bottom: const TabBar(indicatorColor: Colors.yellow, tabs: [
              Tab(
                text: 'Smart Phones',
              ),
              Tab(
                text: 'Air Conditioners',
              ),
              Tab(
                text: 'Laptops',
              ),
              Tab(
                text: 'Android Tv',
              ),
              Tab(
                text: 'Refrigerators',
              ),
            ]),
          ),
          body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const TabBarView(children: [
                SmartPhones(),
                AirConditioners(),
                Laptops(),
                Refrigerators(),
                SmartTv()
              ])),
        ),
      ),
    );
  }
}
