import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/resultados.dart';
import 'quizdados.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;
  @override

void initState() {
  super.initState();

  quiz.shuffle();

  quiz.forEach((elemento) {
    int alternativaCorreta = elemento['alternativa_correta'];
    List respostas = elemento['respostas'];
    String respostaCorreta = respostas[alternativaCorreta - 1];

    respostas.shuffle();

    int novaCorreta = respostas.indexOf(respostaCorreta) + 1;
    elemento['alternativa_correta'] = novaCorreta;
  });
}

  Widget build(BuildContext context) {

    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] - 1 == respostaNumero)  {
          acertos++;
        } else {
          erros++;
        }

        if (perguntaNumero == 10) {
          Navigator.pushNamed(
            context,
            'Resultado',
            arguments: Argumentos(acertos),
          );
        } else {
          perguntaNumero++;
        }
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: Image.asset('assets/nabucogrande.png', width: 100),
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(102, 57, 49, 1.0),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
          
            child: Column(
             
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 90,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(
                        222,
                        181,
                        151,
                        1,
                      ), // cor de fundo da caixa
                      borderRadius: BorderRadius.circular(
                        30,
                      ), // cantos arredondados
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Align(
                      child: Text(
                        '$perguntaNumero de 10',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Color.fromRGBO(143, 86, 59, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 500,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(
                        222,
                        181,
                        151,
                        1,
                      ), // cor de fundo da caixa
                      borderRadius: BorderRadius.circular(
                        30,
                      ), // cantos arredondados
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        quiz[perguntaNumero - 1]['pergunta'], textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Color.fromRGBO(143, 86, 59, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 500,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 6,
                        backgroundColor: Color.fromRGBO(143, 86, 59, 1),
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () => {respondeu(0)},
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][0], textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 25,
                          color: Colors.white60,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 500,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 6,
                        backgroundColor: Color.fromRGBO(143, 86, 59, 1),
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () => {respondeu(1)},
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][1], textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize:  25,
                          color: Colors.white60,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 500,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 6,
                        backgroundColor: Color.fromRGBO(143, 86, 59, 1),
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () => {respondeu(2)},
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][2], textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize:  25,
                          color: Colors.white60,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 500,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 6,
                        backgroundColor: Color.fromRGBO(143, 86, 59, 1),
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () => {respondeu(3)},
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][3], textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize:  25,
                          color: Colors.white60,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 500,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 6,
                        backgroundColor: Color.fromRGBO(143, 86, 59, 1),
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                      onPressed: () => {respondeu(4)},
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][4], textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize:  25,
                          color: Colors.white60,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
