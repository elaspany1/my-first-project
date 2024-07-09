class SectionsModel {
  final String imgPath;
  final String sectionName;
  SectionsModel({required this.imgPath, required this.sectionName});
}

List<SectionsModel> allSections = [
  SectionsModel(imgPath: 'img/vege.png', sectionName: 'خضوات'),
  SectionsModel(imgPath: 'img/fruit.png', sectionName: 'فواكه'),
  SectionsModel(imgPath: 'img/metal.png', sectionName: 'معلبات'),
  SectionsModel(imgPath: 'img/meat.png', sectionName: 'لحوم'),
  SectionsModel(imgPath: 'img/cheese.png', sectionName: 'أجبان'),
  SectionsModel(imgPath: 'img/bean.png', sectionName: 'بقوليات'),
  SectionsModel(imgPath: 'img/juice.png', sectionName: 'عصائر'),
  SectionsModel(imgPath: 'img/breads.png', sectionName: 'مخبوزات')
];
