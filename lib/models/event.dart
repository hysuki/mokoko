class Event {
  String? title;
  String? thumbnail;
  String? link;
  String? startDate;
  String? endDate;
  String? rewardDate;

  Event(
      {this.title,
        this.thumbnail,
        this.link,
        this.startDate,
        this.endDate,
        this.rewardDate});

  Event.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    thumbnail = json['Thumbnail'];
    link = json['Link'];
    startDate = json['StartDate'];
    endDate = json['EndDate'];
    rewardDate = json['RewardDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Thumbnail'] = this.thumbnail;
    data['Link'] = this.link;
    data['StartDate'] = this.startDate;
    data['EndDate'] = this.endDate;
    data['RewardDate'] = this.rewardDate;
    return data;
  }
}
