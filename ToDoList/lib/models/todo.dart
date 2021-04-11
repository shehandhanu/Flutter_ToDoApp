class ToDoInfo {
  int _id;
  String _title;
  String _description;
  String _time;
  String _date;

  int id;

  ToDoInfo(this._id, this._title, this._description, this._date, this._time);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': this._id,
      'title': this._title,
      'description': this._description,
      'time': this._time,
      'date': this._date,
    };
    return map;
  }

  ToDoInfo.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _title = map['title'];
    _description = map['description'];
    _time = map['time'];
    _date = map['date'];
  }
}
