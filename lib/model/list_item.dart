class MealItem {
  final String? id;
  final String? quantity;
  final String name;
  final String? imageUrl;
  final String? subtitle;
  final bool? isPcs;
  final String? price;
  final String? oldPrice;
  final String? discount;
  bool? isFrezze;

  MealItem({
    this.id,
    this.quantity,
    required this.name,
    this.imageUrl,
    this.subtitle,
    this.isPcs,
    this.price,
    this.oldPrice,
    this.discount,
    this.isFrezze,
  });

  factory MealItem.fromJson(Map<String, dynamic> json) {
    return MealItem(
      id: json['_id'],
      quantity: json['quantity'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      subtitle: json['subtitle'],
      isPcs: json['isPcs'],
      price: json['price'],
      oldPrice: json['oldPrice'],
      discount: json['discount'],
      isFrezze: json['isFrezze'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'quantity': quantity,
      'name': name,
      'imageUrl': imageUrl,
      'subtitle': subtitle,
      'isPcs': isPcs,
      'price': price,
      'oldPrice': oldPrice,
      'discount': discount,
      'isFrezze': isFrezze,
    };
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
      'name': name,
      'imageUrl': imageUrl,
      'subtitle': subtitle,
      'isPcs': isPcs,
      'price': price,
      'oldPrice': oldPrice,
      'discount': discount,
      'isFrezze': isFrezze,
    };
  }
}
