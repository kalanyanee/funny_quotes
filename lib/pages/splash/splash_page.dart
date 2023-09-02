import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/dog.webp'),
              fit: BoxFit.cover,
            )
        ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Funny Quotes',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sriracha(
                      color:Colors.pink,
                      fontSize: 50,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    )
                ),ElevatedButton(onPressed:(){},child:Text('Start'))
              ],
            )
        ),
      ),
    );
  }
}
