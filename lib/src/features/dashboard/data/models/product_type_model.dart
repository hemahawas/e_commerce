abstract class ProductTypeModel {
  const ProductTypeModel({required this.name, required this.imageUrl});
  final String name;
  final String imageUrl;
}

class BrandModel extends ProductTypeModel {
  const BrandModel({required super.name, required super.imageUrl});
}

class CategoryModel extends ProductTypeModel {
  const CategoryModel({required super.name, required super.imageUrl});
}
