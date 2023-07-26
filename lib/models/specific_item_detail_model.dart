class SpecificItemDetailModel {
  String name;
  String img;
  String description;

  SpecificItemDetailModel(
      {this.name = "", this.img = "", this.description = ""});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['img'] = img;
    data['description'] = description;

    return data;
  }

  @override
  toString() {
    return {
      'name': name,
      'img': img,
      'description': description,
    }.toString();
  }
}
