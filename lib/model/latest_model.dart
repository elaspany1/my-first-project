class LatestModel {
  final String imgPath;
  final String discountImg;
  final String name;
  final String section;
  final String price;
  late final bool favourites;

  LatestModel(
      {required this.imgPath,
      required this.name,
      required this.section,
      required this.price,
      required this.favourites,
      this.discountImg = "assets/img/discount.png"});
 factory LatestModel.list (List<LatestModel> l) {
   return l.last;
 }
}

List<LatestModel> latestList = [
  LatestModel(
      imgPath: 'img/item1.png',
      name: 'تصبيره',
      section: 'مخبوزات',
      price: '21.00 د.ع',
      favourites: false),
  LatestModel(
      imgPath: 'img/item2.png',
      name: 'حليب المراعي',
      section: 'ألبان',
      price: '25.00 د.ع',
      favourites: false),
  LatestModel(
      imgPath: 'img/item3.png',
      name: 'عصير تروبيكانا',
      section: '',
      price: '23.00 د.ع',
      favourites: false)
];
List<LatestModel> offersList =[
  LatestModel(
      imgPath: 'img/honey.png',
      name: 'عسل طبيعي',
      section: 'معلبات',
      price: '21.00 د.ع',
      favourites: false),
  LatestModel(
      imgPath: 'img/khamera.png',
      name: 'خميره فوريه',
      section: 'مخبوزات',
      price: '25.00 د.ع',
      favourites: false),
  LatestModel(
      imgPath: 'img/ghee.png',
      name: 'سمن بلدي',
      section: 'البان',
      price: '23.00 د.ع',
      favourites: false)
];