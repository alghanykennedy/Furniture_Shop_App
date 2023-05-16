class ItemsFurnitureModel {
  final String name;
  final String image;
  final double price;
  final double rate;

  ItemsFurnitureModel(
      {required this.name,
      required this.image,
      required this.price,
      required this.rate});
}

List<ItemsFurnitureModel> itemsFurniture = [
  ItemsFurnitureModel(
      name: 'Stylish Chair',
      image: 'assets/images/img_furniturecompo.png',
      price: 170,
      rate: 4.8),
  ItemsFurnitureModel(
      name: 'Modern Table',
      image: 'assets/images/img_masterbedroom.png',
      price: 75,
      rate: 4.9),
  ItemsFurnitureModel(
      name: 'Wooden Console',
      image: 'assets/images/img_modernfurnitur.png',
      price: 240,
      rate: 4.7),
  ItemsFurnitureModel(
      name: 'Brown Armchair',
      image: 'assets/images/img_vintagefurnitu.png',
      price: 210,
      rate: 4.9),
];
