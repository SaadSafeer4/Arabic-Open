import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final IconData icon1;
  final void Function()? onTap;

  const MyButton({super.key, required this.text, required this.onTap, required this.icon1,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[400], 
          borderRadius: BorderRadius.circular(70),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(
              text,
              style: GoogleFonts.dmSerifDisplay(
                    color: Colors.black,
                    fontSize: 24,
                    height: 2,
                  ), 
              ),
    
            const SizedBox(width: 20),
    
            //icon
            Icon(icon1, color: Colors.black),
    
          ],
        ),
      ),
    );
  }
}