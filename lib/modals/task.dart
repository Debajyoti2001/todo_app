class Task{
  Task({required this.taskName, this.isDone = false});
  String taskName;
  bool isDone;
  void toggelDone(){
    isDone = !isDone;
  }
}