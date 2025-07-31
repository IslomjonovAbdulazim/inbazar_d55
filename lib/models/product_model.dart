class CategoryModel {
  late String title;
  late String id;

  CategoryModel();

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    title = json['title'] ?? '';
  }
}

class ProductModel {
  late String id;
  late String title;
  late int price;
  late String image;

  ProductModel();

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    title = json['title'] ?? '';
    price = json['price'] ?? 0;
    image = json['image'] ?? '';
  }
}

class DetailModel {
  late String id;
  late String title;
  late String description;
  late List<String> sizes;
  late List<String> colors;
  late List<String> images;
  DetailModel();

  DetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    title = json['title'] ?? '';
    description = json['description'] ?? '';
    sizes = (json['sizes'] as List<dynamic>? ?? []).map((e) => e.toString()).toList();
    colors = (json['colors'] as List<dynamic>? ?? []).map((e) => e.toString()).toList();
    images = (json['images'] as List<dynamic>? ?? []).map((e) => e.toString()).toList();
  }
}
