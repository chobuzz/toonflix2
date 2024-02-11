class WebtoonModel {
  final String title, id, thumb;

  WebtoonModel.fromJson(Map<String, dynamic> json) //Map은 Key, Value가 있는 값
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
