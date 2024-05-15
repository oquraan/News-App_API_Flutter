class ArticalModel {
  final  String? image;
  final String title;
  final String? subTitle;
  ArticalModel(
      {required this.image, required this.subTitle, required this.title});
 factory  ArticalModel.fromJasin(jason) {
  return ArticalModel(  image : jason["urlToImage"],
  subTitle : jason["description"],
    title : jason["title"],);
  
  }
}
