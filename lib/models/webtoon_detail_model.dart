class WebtoonDetailModel {
  final String title, about, genre, age;

  WebtoonDetailModel.fromJson(Map<String, dynamic> json) //Map은 Key, Value가 있는 값
      : title = json['title'],
        genre = json['genre'],
        about = json['about'],
        age = json['age'];
}
