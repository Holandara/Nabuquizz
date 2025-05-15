import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(222, 181, 151, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/nabuco.png', width: 300), 
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                   side: BorderSide(
                    width: 2.0,
                    color: Colors.white60,
                  ),
                  backgroundColor: Color.fromRGBO(143, 86, 59, 1),
                  padding: EdgeInsets.fromLTRB(90, 10, 90, 10),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'Quiz');
                },
                child: Text('iniciar',  style: GoogleFonts.montserratAlternates(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 35,
                        color: Colors.white60,
                        fontWeight: FontWeight.w600,
                      ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
