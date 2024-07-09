
 class NearbyModel{
  final String imgPath;
  final String MarketName;
  NearbyModel({required this.imgPath ,required this.MarketName});
 }
 
 List<NearbyModel> marketsList = [
   NearbyModel(imgPath: 'img/ramez.png', MarketName: 'ماركت رامز'),
  NearbyModel(imgPath: 'img/benna.png', MarketName: 'ماركت البنه'),
  NearbyModel(imgPath: 'img/saudi.png', MarketName: 'ماركت سعودي'),
  NearbyModel(imgPath: 'img/safqa.png', MarketName: 'ماركت صفقه')


 ];