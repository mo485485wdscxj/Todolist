import 'package:dio/dio.dart';
import 'package:untitled16/Models/T_model.dart';
class T_Servcies
{
  static Dio dio=Dio();
  static Map postdata={'todo':'','completed':false,'userId':1};
  static Future<T_model>get()async{
    Response response = await dio.get('https://dummyjson.com/todos/user/1');
    return T_model.fromjson(response.data);
  }
  static Future<void>Adddata({required String putodo})async
  {
    postdata['todo']=putodo;
    await dio.post('https://jsonplaceholder.typicode.com/posts',data: postdata);
  }
}