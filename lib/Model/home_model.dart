class HomeModel {
  late bool status;
  late HomeDataModel data ;
}

class BannerModel {
  late int id;
  late String image;
  late var category;
  late var product;
}

class HomeDataModel {
  late BannerModel banners;
  late ProductsModel products;
}

class ProductsModel {
  
}
