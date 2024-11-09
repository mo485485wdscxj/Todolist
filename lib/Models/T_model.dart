class T_model
{
 int total=0;
 List<dynamic>todos;

 T_model({required this.total,required this.todos});
 factory T_model.fromjson(Map<String,dynamic>json)
 {
   return T_model(total: json['todos'], todos: json['total']);
 }
}