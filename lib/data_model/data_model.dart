class ListDataModel{
  int id;
  String todo;
  bool completed;
  int? userId;

  ListDataModel({required this.id, required this.todo, 
                required this.completed, this.userId});

  //To read from map 
  factory ListDataModel.fromJeson(Map jeson){
    return ListDataModel( //Return a constructer
      id: jeson["id"], 
      todo: jeson["todo"],
      completed: jeson["completed"],
      userId: jeson["userID"],
      );

  }

}