class CartModel {
  int? id;
  String brand;
  String price;
  String image;
  bool isCompleted;

  CartModel({
    this.id,
    required this.brand,
    required this.price,
    required this.image,
    this.isCompleted = false,
});

  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'brand': brand,
      'price': price,
      'image': image,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map){
    return CartModel(
      id: map['id'],
      brand: map['brand'],
      price: map['price'],
      image: map['image'],
      isCompleted: map['isCompleted'] ==1,

    );
  }
}