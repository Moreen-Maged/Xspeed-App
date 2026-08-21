class ProductModel {
  final String title;
  final String image;
  final String subtitle;
  final double price;
  final double? beforediscountprice;
  final bool isNew;
  final bool isExclusive;

  ProductModel({
    required this.title,
    required this.image,
    required this.subtitle,
    required this.price,
    required this.beforediscountprice,
    this.isNew = false,
    this.isExclusive = false,
  });
}
