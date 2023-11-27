import 'package:flutter/material.dart';

class IncrementDecrementScreen extends StatefulWidget {
  const IncrementDecrementScreen({super.key});
  @override
  State<StatefulWidget> createState() => _IncrementDecrementScreenState();
}

class _IncrementDecrementScreenState extends State<IncrementDecrementScreen> {
  int number = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title: const Text("سبحه"),
        centerTitle:true ,
      ),
      body:  Center(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: (){
            if(number>1){
              setState(() {
                number =0 ;
              });
            }

          },
            child:Icon(Icons.undo_outlined) ,
          ),
          const SizedBox(height: 15,),
          FloatingActionButton(onPressed: (){

            setState(() {
              number++;
            });
          },
            child:Icon(Icons.add) ,
          ),
          SizedBox(height: 15,),
          FloatingActionButton(onPressed: (){
            if(number>1){
              setState(() {
                number--;
              });
            }
          },
            child:Icon(Icons.remove) ,
          ),
        ],
      ),
    );
  }
}