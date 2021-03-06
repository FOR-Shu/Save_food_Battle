import 'dart:ffi';

class AllCardItem {
  final String urlImage;
  final String title;
  final String date;
  final String count; //份數
  final String place; //儲存地點
  final String method; //儲存方式
  final String use;

  const AllCardItem({
    required this.urlImage,
    required this.title,
    required this.date,
    required this.count,
    required this.place,
    required this.method,
    required this.use,
  });
}
