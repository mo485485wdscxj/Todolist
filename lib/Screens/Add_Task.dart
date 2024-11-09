import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled16/Provider/T_Provider.dart';
class Add_Task extends StatelessWidget {
  const Add_Task({super.key});

  @override
  Widget build(BuildContext context) {
    String newtas = '';
    final TaskOb=Provider.of<T_provider>(context,listen: false);
    return Column(
      children: [
        TextFormField(
          textAlign: TextAlign.center,
          onChanged: (value){
            newtas=value;
          },
        ),

TextButton(onPressed: (){
  if(newtas.trim()!='')
    {
      TaskOb.Pos(newtas);
    }
  Navigator.pop(context);
},
    child: Text("Add"))

      ],
    );
  }
}
