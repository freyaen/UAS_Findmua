import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:findmua/bookingmua/Home/home_screen_mua.dart';
import 'package:findmua/maps/widget_peta.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:findmua/muahome/model/mua_category.dart';
import 'package:findmua/muahome/model/recommended_model.dart';
import 'package:findmua/muahome/widgets/mua_card.dart';
import 'package:findmua/muahome/widgets/recommended_card.dart';
import 'screens/riwayat/riwayat.dart';
import 'package:findmua/buymakeup/Home/home_screen.dart';

class MuaLocaterHome extends StatefulWidget {
  const MuaLocaterHome({Key? key}) : super(key: key);

  @override
  _MuaLocaterHomeState createState() => _MuaLocaterHomeState();
}

class _MuaLocaterHomeState extends State<MuaLocaterHome> {
  final List<RecommendedModel> recommended =
      RecommendedModel.recommended.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(225, 152, 180, 255), // Warna latar belakang header
              padding: EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  'Find MUA',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      color: Colors.white, // Warna teks judul
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(224, 255, 255, 255),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    height: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox.fromSize(
                          size: const Size(86, 86),
                          child: ClipOval(
                            child: Material(
                              color: Color.fromARGB(225, 152, 180, 255),
                              child: InkWell(
                                splashColor: Colors.green,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreenmua(),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.pages_outlined,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    Text(
                                      "Booking",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: const Size(86, 86),
                          child: ClipOval(
                            child: Material(
                              color: Color.fromARGB(225, 152, 180, 255),
                              child: InkWell(
                                splashColor: Colors.green,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CityMapWidget(),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.local_fire_department_outlined,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 19.0),
                                      child: Text(
                                        "MUA Around",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox.fromSize(
                          size: const Size(86, 86),
                          child: ClipOval(
                            child: Material(
                              color: Color.fromARGB(225, 152, 180, 255),
                              child: InkWell(
                                splashColor: Colors.green,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        "Make-Up Shop",
                                        style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Most Popular',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 20),
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.59,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                    ),
                    items: MuaCategory.muas
                        .map((category) => MUACard(category: category))
                        .toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Recommended',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: recommended.length,
                    itemBuilder: (context, index) {
                      return RecommendedCard(
                        recommendedModel: recommended[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
