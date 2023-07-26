class ItemDetailModel {
  String name;
  String img;
  String productcount;
  String price;

  ItemDetailModel(
      {this.name = "", this.img = "", this.productcount = "", this.price = ""});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['img'] = img;
    data['productcount'] = productcount;
    data['price'] = price;
    return data;
  }

  @override
  toString() {
    return {
      'name': name,
      'img': img,
      'productcount': productcount,
      'price': price
    }.toString();
  }
}
