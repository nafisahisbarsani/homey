
class WishlistModel{
  int? id;
  String brand;
  String price;
  String image;
  String icon;
  bool isCompleted;

  WishlistModel({
    this.id,
    required this.brand,
    required this.price,
    required this.image,
    required this.icon,
    this.isCompleted = false,
  });
  Map<String, dynamic> toMap(){
    return {
      'id': id,
      'brand': brand,
      'price': price,
      'image': image,
      'icon': icon,
      'isCompleted': isCompleted ? 1 : 0,
    };
  }
  factory WishlistModel.fromMap(Map<String, dynamic> map){
    return WishlistModel(
      id: map['id'],
      brand: map['brand'],
      price: map['price'],
      image: map['image'],
      icon: map['icon'],
      isCompleted: map['isCompleted'] ==1,

    );
  }
}