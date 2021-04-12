class Task {
  String title;
  bool ischecked;
  Task({this.title, this.ischecked = false});
  void toogleTask() {
    ischecked = !ischecked;
  }
}
