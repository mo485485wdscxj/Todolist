import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled16/Provider/T_Provider.dart';
import 'package:untitled16/Screens/Add_Task.dart';
import 'package:untitled16/Widget/T_widget.dart';
class T_creen extends StatelessWidget {
  const T_creen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TodoList'),
      ),
      body:Consumer<T_provider>(builder: (context, value, child)
      {
        final datafrom=value.data?.todos;
        if(datafrom==null)
          {
            value.get();
            return Center(child: CircularProgressIndicator(),);
          }
        else
          {
            return ListView.separated(
                itemBuilder: (context,index)
                {
                  return T_Widget(notification: datafrom[index]['todo']);
                },
                separatorBuilder: (context,index)=>SizedBox(height:20),
                itemCount: datafrom.length);
          }
      },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context){
          return Add_Task();
        });
      },
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
        child: Icon(Icons.add_circle),
      ),
    );
  }
}
