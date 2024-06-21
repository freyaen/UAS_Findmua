class MuaCategory {
  String? image;
  String? category;
  String? type;
  String? salary;
  MuaCategory({this.image, this.category, this.type, this.salary});

  static List<MuaCategory> muas = [
    MuaCategory(
      salary: ' 10\$',
      type: 'Alana',
      image: 'images/4.png',
      category: 'Wedding',
    ),
    MuaCategory(
      salary: ' 50\$',
      type: 'SalMUA',
      image: 'images/11.jpg',
      category: 'Graduation',
    ),
    MuaCategory(
      salary: '60\$',
      type: 'Rad Party',
      image: 'images/7.png',
      category: 'Party',
    ),
    MuaCategory(
      salary: '90\$',
      type: 'Ai',
      image: 'images/1.png',
      category: 'Natural',
    ),
    MuaCategory(
      salary: '100\$',
      type: 'Xinxi',
      image: 'images/6.png',
      category: 'Glamour',
    ),
  ];
}
