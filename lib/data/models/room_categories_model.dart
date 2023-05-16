class RoomCategoriesModel {
  final String name;

  RoomCategoriesModel({required this.name});
}

List<RoomCategoriesModel> roomCategories = [
  RoomCategoriesModel(name: 'All'),
  RoomCategoriesModel(name: 'Living Room'),
  RoomCategoriesModel(name: 'Bedroom'),
  RoomCategoriesModel(name: 'Dining Room'),
  RoomCategoriesModel(name: 'Kitchen'),
];
