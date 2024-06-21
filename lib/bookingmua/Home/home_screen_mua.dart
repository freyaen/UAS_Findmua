import 'package:flutter/material.dart';
import '../models/product_model_mua.dart';
import '../screens/Cart/cart_screen_mua.dart';
import 'Widget/product_cart_mua.dart' as ProductCart;
import 'Widget/search_bar_mua.dart' as SearchBar;
import '../models/category_mua.dart';
import 'Widget/home_app_bar_mua.dart' as HomeAppBar; // Adding alias HomeAppBar
import 'Widget/image_slider_mua.dart' as Slider; // Adding alias Slider

class HomeScreenmua extends StatefulWidget {
  const HomeScreenmua({Key? key}) : super(key: key);

  @override
  State<HomeScreenmua> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenmua> {
  int currentSlider = 0;
  int selectedIndex = 0;
  String searchText = '';

  void setSearchText(String text) {
    setState(() {
      searchText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectcategories = [
      all,
      natural,
      party,
      graduation,
      wedding,
      MensGrooming
    ];

    // Filtered list of products based on selected category and search text
    List<Product> filteredProducts =
        selectcategories[selectedIndex].where((product) {
      return searchText.isEmpty ||
          product.title.toLowerCase().contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              // Custom appbar using alias
              const HomeAppBar.CustomAppBar(),
              const SizedBox(height: 20),
              // Search bar
              SearchBar.MySearchBAR(
                onChanged: setSearchText,
              ),
              const SizedBox(height: 20),
              // Image slider using alias
              Slider.ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              // Category selection
              categoryItems(),

              const SizedBox(height: 20),
              if (selectedIndex == 0)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

              const SizedBox(height: 10),
              // Shopping items grid view
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  return ProductCart.ProductCard(
                    product: product,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox categoryItems() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: selectedIndex == index
                    ? Color.fromARGB(225, 152, 180, 255)
                    : Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(categoriesList[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    categoriesList[index].title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
