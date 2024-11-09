import 'package:flutter/cupertino.dart';
import 'package:untitled16/Models/T_model.dart';
import 'package:untitled16/Servcies/T_Servceis.dart';

class T_provider with ChangeNotifier
{
  T_model?data;
  Future<void>get()async
  {
    data=await T_Servcies.get();
    notifyListeners();
  }

    Future<void>Pos(String addData)async{
    await T_Servcies.Adddata(putodo: addData);
    data?.todos.add({"todo":addData});
    data?.total+=1;
    notifyListeners();
    }
}