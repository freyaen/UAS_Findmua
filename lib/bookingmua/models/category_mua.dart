class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}
// All,
// Natural,
// Party,
// Graduation,
// Wedding,
// Men's Grooming

final List<Category> categoriesList = [
  Category(
    title: "All",
    image: "images/all.png",
  ),
  Category(
    title: "Natural",
    image: "images/natural.png",
  ),
  Category(
    title: "Party",
    image: "images/party.png",
  ),
  Category(
    title: "Graduation",
    image: "images/graduation.png",
  ),
  Category(
    title: "Wedding",
    image: "images/wedding.png",
  ),
  Category(
    title: "Men's\nGrooming",
    image: "images/MensGrooming.png",
  ),
];
