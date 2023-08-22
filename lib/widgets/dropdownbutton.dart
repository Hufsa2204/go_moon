import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget{
  double width;
  List<String> values;
  CustomDropdownButton({required this.width, required this.values})
  {

  }
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.symmetric(horizontal: width *0.05),
     width: width,
     decoration: BoxDecoration(
         color:const Color.fromRGBO(53, 53, 53, 1.0),
         borderRadius:BorderRadius.circular(10.0)
     ),
     child: DropdownButton(
         isExpanded: true,
         underline: Container(),
       dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
       style: TextStyle(
           color: Colors.white
       ),
       items: values.map(
               (e){
             return DropdownMenuItem(
               child: Text(e),
               value: e,);
           }).toList(),
       onChanged: (_){},
       value: values.first,
     ),
   );
  }

}