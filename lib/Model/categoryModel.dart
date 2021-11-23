class CategoryModelData {
  late String icon;
  late String title;

  CategoryModelData({
    required this.icon,
    required this.title,
  });

  static List<CategoryModelData> icons = [
    CategoryModelData(
      icon: "assets/icons/men.jpg",
      title: "Shoes",
    ),
    CategoryModelData(
      icon: "assets/icons/gadget.jpg",
      title: "HeadPhones",
    ),
    CategoryModelData(
      icon: "assets/icons/women.jpg",
      title: "Women",
    ),
    CategoryModelData(
      icon: "assets/icons/game.png",
      title: "Games",
    ),
    CategoryModelData(
      icon: "assets/icons/electronics.png",
      title: "Electronics",
    ),

  ];
}