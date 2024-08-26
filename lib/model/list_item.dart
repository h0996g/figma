class MealItem {
  final String quantity;
  final String title;
  final String subtitle;
  final bool isPcs;
  final String price;
  final String? oldPrice;
  final String? discount;

  MealItem({
    required this.quantity,
    required this.title,
    required this.subtitle,
    required this.isPcs,
    required this.price,
    this.oldPrice,
    this.discount,
  });
}
