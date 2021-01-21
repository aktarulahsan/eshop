
class CategoryModel{
  final String categoryName;
  final String categoryImage;
  final List<SubCategoryModel> subCategories;
  CategoryModel({this.categoryName, this.subCategories, this.categoryImage});
}

class SubCategoryModel{
  final String subCategoryName;
  final List<String> subCategoriesTitle;
  SubCategoryModel({this.subCategoryName, this.subCategoriesTitle});
}

final List<SubCategoryModel> subCategories = [
  SubCategoryModel(
    subCategoryName: 'MEN\'S APPAREL',
    subCategoriesTitle: ['T-shirts', 'Shirts', 'Pants & Jeans', 'Socks & Ties', 'Underwear', 'Jackets', 'Coats', 'Sweaters'],
  ),
  SubCategoryModel(
    subCategoryName: 'WOMEN APPAREL',
    subCategoriesTitle: ['Officewear', 'Blouse & T-Shirts', 'Pants & Jeans', 'Dress', 'Lingerie', 'Jackets', 'Coats', 'Sweaters'],
  ),
];
final List<SubCategoryModel> subCategories1 = [
  SubCategoryModel(
    subCategoryName: 'MEN\'S APPAREL',
    subCategoriesTitle: ['T-shirts', 'Shirts', 'Pants & Jeans', 'Socks & Ties', 'Underwear', 'Jackets', 'Coats', 'Sweaters'],
  ),
  SubCategoryModel(
    subCategoryName: 'WOMEN APPAREL',
    subCategoriesTitle: ['Officewear', 'Blouse & T-Shirts', 'Pants & Jeans', 'Dress', 'Lingerie', 'Jackets', 'Coats', 'Sweaters'],
  ),
  SubCategoryModel(
    subCategoryName: 'WOMEN APPAREL',
    subCategoriesTitle: ['Officewear', 'Blouse & T-Shirts', 'Pants & Jeans', 'Dress', 'Lingerie', 'Jackets', 'Coats', 'Sweaters'],
  ),
];
final List<CategoryModel> allCategory = [
  CategoryModel(
    categoryImage: 'assets/svg/apparel.svg',
    categoryName: 'Apparel',
    subCategories: subCategories,
  ),
  CategoryModel(
    categoryImage: 'assets/svg/Beauty.svg',
    categoryName: 'Beauty',
    subCategories: subCategories1,
  ),
  CategoryModel(
    categoryImage: 'assets/svg/Shoes.svg',
    categoryName: 'Shoes',
    subCategories: subCategories,
  ),
  CategoryModel(
    categoryImage: 'assets/svg/electronics.svg',
    categoryName: 'Electronics',
    subCategories: subCategories1,
  ),
  CategoryModel(
    categoryImage: 'assets/svg/Furniture.svg',
    categoryName: 'Furniture',
    subCategories: subCategories,
  ),
  CategoryModel(
    categoryImage: 'assets/svg/Home.svg',
    categoryName: 'Home',
    subCategories: subCategories1,
  ),
  CategoryModel(
    categoryImage: 'assets/svg/Stationary.svg',
    categoryName: 'Stationary',
    subCategories: subCategories,
  ),
];