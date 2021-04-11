class ToDoInfo {
  int id;
  String title;
  String description;
  String time;
  String date;

  ToDoInfo(this.id, this.title, this.description, this.date, this.time);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': this.id,
      'title': this.title,
      'description': this.description,
      'time': this.time,
      'date': this.date,
    };
    return map;
  }

  ToDoInfo.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    title = map['title'];
    description = map['description'];
    time = map['time'];
    date = map['date'];
  }
}
