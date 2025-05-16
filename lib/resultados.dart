import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Argumentos {
  int acertos = 0;
  Argumentos(this.acertos);
}

class Resultado extends StatelessWidget {
  static const routeName = 'Resultado';
  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {



    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(222, 181, 151, 1.0),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text(
                    'Resultado',
                    style: GoogleFonts.montserratAlternates(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 50,
                      color: Color.fromRGBO(143, 86, 59, 1),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(50),
                        backgroundColor: Color.fromRGBO(143, 86, 59, 1), // <-- Button color
                        foregroundColor: Colors.red, // <-- Splash color
                      ),  
                    child: Text(
                      
                        '${argumentos.acertos} / 10',
                        style: GoogleFonts.montserratAlternates(
                        
                          fontSize: 40,
                          color: Color.fromRGBO(222, 181, 151, 1.0),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                  ),   
                 
                 if (argumentos.acertos == 10)
                  Text( 
                    'Uau! Você realmente conhece o Nabuco!',  textAlign: TextAlign.center,
                    style: GoogleFonts.montserratAlternates(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 30,
                      color: Color.fromRGBO(143, 86, 59, 1),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  
                  if (argumentos.acertos < 6)
                  Align(
                    
                    alignment: Alignment.center,
                    child: Text(
                      '😞\n Nabuco está decepcionado com tanta desinformação', textAlign: TextAlign.center,
                      style: GoogleFonts.montserratAlternates(
                        
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 30,
                        color: Color.fromRGBO(143, 86, 59, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  if (argumentos.acertos < 10 && argumentos.acertos >= 6 )
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Você está no caminho certo! Mas ainda há muito sobre Nabuco para aprender.',  textAlign: TextAlign.center,
                      style: GoogleFonts.montserratAlternates(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 25,
                        color: Color.fromRGBO(143, 86, 59, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                                   
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2.0, color: Colors.white60),
                        backgroundColor: Color.fromRGBO(143, 86, 59, 1),
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      ),
                      onPressed: () => {Navigator.pushNamed(context, 'Quiz')},
                      child: Text(
                        'Jogar novamente',
                        style: GoogleFonts.montserratAlternates(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 25,
                          color: Colors.white60,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
