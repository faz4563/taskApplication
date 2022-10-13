// ignore_for_file: non_constant_identifier_names, file_names, unnecessary_null_comparison, unused_local_variable

import 'package:flutter/material.dart';

class SmartPhones extends StatefulWidget {
  const SmartPhones({super.key});

  @override
  State<SmartPhones> createState() => _SmartPhonesState();
}

var a = [
  {
    "id": "Prod.1",
    "title": "Samsung M33 5G",
    "price": "19,000",
    "images": "assets/images/m33.jpg",
    "description":
        " S Pen Pro and S Pen Fold Edition sold separately. Only use the Samsung S Pen Pro or the S Pen Fold Edition designed exclusively for Galaxy Z Fold3 5G. All other S Pens or stylus pens not designed for Galaxy Z Fold3 5G (including those by other manufacturers) may damage the screen.Galaxy Z Fold3 5G and Z Filp3 5G is rated as IPX8. IPX8 is based on test conditions for submersion in up to 1.5 meters of freshwater for up to 30 minutes. Not advised for beach or pool use. Not dust resistant.Images shown here are for representational purpose only, actual may vary. All features, specifications and prices are subject to change without prior notice. Model availability may vary from location to location."
  },
  {
    "id": "Prod.2",
    "title": "Samsung S10+",
    "price": "59,000",
    "images": "assets/images/sam1.jpg",
    "description":
        "Why buy Apple iPad 10.2 9th Gen WiFi iPadOS Tablet 10.2-Inch Display with 2160 x 1620 pixels resolution.Stereo Speakers with Dual microphones.64GB Storage helps you to store your files easily.A13 Bionic Chip for smooth performance.Touch ID for added security"
  },
  {
    "id": "Prod.3",
    "title": "Apple Ipad Air",
    "price": "38,000",
    "images": "assets/images/Sam2.avif",
    "description":
        " Buy the Apple iPhone 14 128 GB (Blue, 4 GB RAM) and delve into a new world of possibilities. The stylish and marvellous design of the phone attracts everyone.You can upgrade your photography skills as the Apple iPhone 14 128 GB (Blue, 4 GB RAM) features a 12 MP f/1.5, Wide Angle, Primary Camera, 12 MP f/2.4, Ultra-Wide Angle Camera. Hence, you can click some amazing pictures and record high quality videos. Moreover, the phone's rear camera setup is loaded with numerous features such as Digital Zoom, Auto Flash, Face detection, Touch to focus.Besides, you get a 12 MP on the front for selfies and video chats."
  },
  {
    "id": "Prod.4",
    "title": "Apple iPhone 14",
    "price": "95,000",
    "images": "assets/images/sam3.jpg",
    "description":
        "All specifications and descriptions provided herein may be different from the actual specifications and descriptions for the product. Samsung reserves the right to make changes to this web page and the product described herein, at anytime, without obligation on Samsung to provide notification of such change. All functionality, features, specifications, GUI and other product information provided in this web page including, but not limited to, the benefits, design, pricing, components, performance, availability, and capabilities of the product are subject to change without notice or obligation. The contents within the screen are simulated images and are for demonstration purposes only."
  },
  {
    "id": "Prod.5",
    "title": "Galaxy Tab S6 Lite",
    "price": "1,20,000",
    "images": "assets/images/sam4.jpg",
    "description":
        "Galaxy Tab S6 Lite is your super carryable note-taking, go-getting companion. It comes with a large 26.31cm (10.4') display on a slim and light build, One UI 4 on Android, and S Pen in box and ready to go. Whether you're drawing, learning or gaming, this is the tablet made to be in the moment."
  },
  {
    "id": "Prod.6",
    "title": "Apple Iphone Xr Black",
    "price": "90,000",
    "images": "assets/images/sam5.jpg",
    "description":
        "iPhone XR features the most advanced LCD in a smartphonea 6.1-inch Liquid Retina display with industry-leading colour accuracy and an innovative backlight design that allows the screen to stretch into the corners. Six stunning new finishes. Advanced Face ID lets you securely unlock your iPhone, log in to apps, and pay with just a glance. The A12 Bionic chip with next-generation Neural Engine uses real-time machine learning to transform the way you experience photos, gaming, augmented reality, and more. A breakthrough 12MP camera system with Portrait mode, Portrait Lighting, enhanced bokeh, and all-new Depth Control. Water resistance. And iOS 12the most advanced mobile operating system in the worldwith powerful new tools that make iPhone more personal than ever."
  },
  {
    "id": "Prod.7",
    "title": "Google Pixel 6 5G",
    "price": "1,50,000",
    "images": "assets/images/sam6.jpg",
    "description":
        " S Pen Pro and S Pen Fold Edition sold separately. Only use the Samsung S Pen Pro or the S Pen Fold Edition designed exclusively for Galaxy Z Fold3 5G. All other S Pens or stylus pens not designed for Galaxy Z Fold3 5G (including those by other manufacturers) may damage the screen.Galaxy Z Fold3 5G and Z Filp3 5G is rated as IPX8. IPX8 is based on test conditions for submersion in up to 1.5 meters of freshwater for up to 30 minutes. Not advised for beach or pool use. Not dust resistant.Images shown here are for representational purpose only, actual may vary. All features, specifications and prices are subject to change without prior notice. Model availability may vary from location to location."
  }
];

var idList = [];
var titleList = [];
var priceList = [];
var imageList = [];
var descripList = [];
// var Formatteddata = {};
var selectedDataList = [];

class FormattedData {
  String title;
  String price;
  FormattedData({required this.title, required this.price});
}

class _SmartPhonesState extends State<SmartPhones> {
  @override
  void initState() {
    data();
    CheckValue = List<bool>.filled(idList.length, false);
    super.initState();
  }

  bool longPressed = false;
  List<bool>? CheckValue;
  bool dataSelected = false;
  data() {
    var response = [a];
    for (var i = 0; i < a.length; i++) {
      idList.add(a[i]['id']);
      titleList.add(a[i]['title']);
      priceList.add(a[i]['price']);
      imageList.add(a[i]['image']);
      descripList.add(a[i]['description']);
    }
    // }
    print(idList);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            ListView.builder(
              itemCount: Set.of(idList).toSet().toList().length,
              itemBuilder: (context, index) {
                return InkWell(
                  onDoubleTap: () {
                    setState(() {
                      longPressed = false;
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      longPressed = true;
                    });
                  },
                  child: ExpansionTile(
                    title: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        titleList[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    textColor: Colors.black,
                    trailing: longPressed
                        ? Checkbox(
                            value: CheckValue![index],
                            onChanged: (bool? value) {
                              if (mounted) {
                                setState(() {
                                  CheckValue![index] = value!;
                                });
                                selectedDataList.add(FormattedData(
                                    title: (titleList[index]),
                                    price: priceList[index]));
                                print(selectedDataList.length);
                                // selectedDataList.add(idList[index]);
                                // selectedDataList.add(titleList[index]);
                                // selectedDataList.add(priceList[index]);

                              }
                            })
                        : null,
                    subtitle: Text(
                      priceList[index],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.green),
                    ),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image.asset(imageList[index].toString()
                          // ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              "Product Id - ${idList[index]} ",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Text(
                              descripList[index],
                              style: const TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
            Positioned(
                right: 1,
                bottom: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) =>
                      //           CartScreen(SelectedList: selectedDataList)),
                      // );
                    },
                    child: Text("Add to Cart"),
                  ),
                ))
          ],
        )
        // :
        );
  }
}

class AirConditioners extends StatefulWidget {
  const AirConditioners({super.key});

  @override
  State<AirConditioners> createState() => _AirConditionersState();
}

class _AirConditionersState extends State<AirConditioners> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ExpansionTile(
            title: Text("GENERAL"),
            subtitle: Text(""),
            children: [],
          );
        },
      ),
    );
  }
}

class Laptops extends StatefulWidget {
  const Laptops({super.key});

  @override
  State<Laptops> createState() => _LaptopsState();
}

class _LaptopsState extends State<Laptops> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ExpansionTile(
            title: Text("DELL"),
            subtitle: Text(""),
            children: [],
          );
        },
      ),
    );
  }
}

class Refrigerators extends StatefulWidget {
  const Refrigerators({super.key});

  @override
  State<Refrigerators> createState() => _RefrigeratorsState();
}

class _RefrigeratorsState extends State<Refrigerators> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ExpansionTile(
            title: Text("VOLTAS"),
            subtitle: Text(""),
            children: [],
          );
        },
      ),
    );
  }
}

class SmartTv extends StatefulWidget {
  const SmartTv({super.key});

  @override
  State<SmartTv> createState() => _SmartTvState();
}

class _SmartTvState extends State<SmartTv> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ExpansionTile(
            title: Text("REDMI"),
            subtitle: Text(""),
            children: [],
          );
        },
      ),
    );
  }
}

class CartScreen extends StatefulWidget {
  CartScreen({
    super.key,
    required List SelectedList,
  });
  final SelectedList = [];

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var title = [];
  var price = [];
  var data = [];
  @override
  void initState() {
    data = widget.SelectedList;
    init();
    super.initState();
  }

  init() {
    for (var i = 0; i < data.length; i++) {
      title.add(widget.SelectedList[i][titleList]);
      price.add(widget.SelectedList[i][priceList]);
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.SelectedList;
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              print("${data[index]['title']}");
              return Card(
                  child: Row(
                children: [
                  Text(
                    title[index],
                  )
                ],
              ));
            }),
      ),
    );
  }
}
