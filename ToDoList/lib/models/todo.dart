class ToDoInfo {
  int _id;
  String _title;
  String _description;
  String _time;
  String _date;

  ToDoInfo(this._title, this._description, this._date, this._time);

  ToDoInfo.fromMap(dynamic obj) {
    this._id = obj['id'];
    this._title = obj['title'];
    this._description = obj['description'];
    this._time = obj['time'];
    this._date = obj['date'];
  }

  int get id => _id;
  String get title => _title;
  String get description => _description;
  String get time => _time;
  String get date => _date;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();

    map["id"] = id;
    map["title"] = title;
    map["description"] = description;
    map["time"] = time;
    map["date"] = date;
    return map;
  }
}
