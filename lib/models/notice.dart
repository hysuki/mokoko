class Notice {
  String? title;
  String? date;
  String? link;
  String? type;

  Notice({this.title, this.date, this.link, this.type});

  Notice.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    date = json['Date'];
    link = json['Link'];
    type = json['Type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Date'] = this.date;
    data['Link'] = this.link;
    data['Type'] = this.type;
    return data;
  }
}
