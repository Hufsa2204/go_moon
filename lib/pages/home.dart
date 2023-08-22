import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_moon/widgets/dropdownbutton.dart';

class Home extends StatelessWidget {
  late double _deviceHeight ,_devicewidth;

   Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _devicewidth  = MediaQuery.of(context).size.width;
    return Scaffold(
     body: SafeArea(
       child: Container(
         height: _deviceHeight,
         width: _devicewidth,
         padding: EdgeInsets.symmetric(horizontal: _devicewidth * 0.05),
         child: Stack(
           children: [
             Column(
               mainAxisSize: MainAxisSize.max,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 _titeText(),
                 rideInformation(),

               ],
             ),
             Align(
               alignment: Alignment.centerRight,
               child: _astroImage(),
             )
           ],
         ),
       ),
     ),
    );
  }

  Widget _astroImage(){
    return Container(
      height: _deviceHeight*0.50,
      width: _devicewidth*0.65,
      decoration: const BoxDecoration(
        image:  DecorationImage(
          image: AssetImage('assets/images/astro_moon.png'),
        )
      ),
    );
  }

  Widget _titeText(){
    return Container(
      child: const Text("#GOMOON",
      style: TextStyle(
        fontSize: 70,
        fontWeight: FontWeight.w800,
        color: Colors.white
      ),
      ),
    );
  }

  Widget _destinationDropdown(){
    return CustomDropdownButton(width: _devicewidth, values: const['James Watson Station',
      'Penure Station',]);

  }
  Widget travellersInformationButton(){
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButton(width: _devicewidth * 0.45, values: const[
          '1',
          '2',
          '3,',
          '4',
        ]),
        CustomDropdownButton(width: _devicewidth *0.40, values: const[
          'Economy',
          'First'
        ])
      ],
    );
  }

  Widget rideInformation(){
    return   Container(
       height: _deviceHeight*0.25,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdown(),
          travellersInformationButton(),
          bookRideButton()
        ],
      ),
    );
  }
  Widget bookRideButton(){
    return Container(
      width: _devicewidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Column(
        children: [
          MaterialButton(
            onPressed: (){},
            child: Text('Book Ride!',
            ),
          ),
        ],
      ),
    );
  }
}

