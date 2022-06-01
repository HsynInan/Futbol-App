class HaberAPI {
  String link;
  String title;
  String image;
  String source;

  HaberAPI({this.link, this.title, this.image, this.source});

  HaberAPI.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    title = json['title'];
    image = json['image'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    data['title'] = this.title;
    data['image'] = this.image;
    data['source'] = this.source;
    return data;
  }
}
