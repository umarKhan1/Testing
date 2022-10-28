import '../constants/imageString.dart';

class VerticalListModel{
  String? imageUrl;
  String? title;
  String? subtitle;
  String? date;
  bool? divider;
  VerticalListModel({this.imageUrl, this.title, this.date, this.subtitle, this.divider});

  static List<VerticalListModel> verticallistmodel =[
    VerticalListModel(imageUrl: ImageString.image, title: "title", subtitle: "subtitle", date: "date", divider: false),
    VerticalListModel(imageUrl: ImageString.image, title: "title", subtitle: "subtitle", date: "date", divider: false),
    VerticalListModel(imageUrl: ImageString.image, title: "title", subtitle: "subtitle", date: "date",divider: false),
    VerticalListModel(imageUrl: ImageString.image, title: "title", subtitle: "subtitle", date: "date",divider: false),
    VerticalListModel(imageUrl: ImageString.image, title: "title", subtitle: "subtitle", date: "date",divider: true),

  ];

}