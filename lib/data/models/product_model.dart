class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.price,
  });

  int? id;
  String? name;
  int? price;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
      };
}
