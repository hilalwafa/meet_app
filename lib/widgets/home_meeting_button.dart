import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet_app/utils/colors.dart';

import '../main.dart';

class HomeMeetingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;
  const HomeMeetingButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
  }): super (key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            height: h*0.08,
            width: h*0.08,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(0.06),
                  offset: const Offset(0,4)
                )
              ]
            ),
            child: Icon(icon,color: Colors.white,size: w*0.06,),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text,style: const TextStyle(
            color: Colors.grey
          ),)
          
        ],
      ),
    );
  }
}
