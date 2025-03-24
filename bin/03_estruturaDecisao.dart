import 'dart:io';

void main(List<String> arguments) {

  // Solicitação da nota
  print('Informe a sua nota:');
  var entradaNota = stdin.readLineSync();
  var nota = double.parse(entradaNota!);  

  // Solicitação da presença
  print('Informe o percentual da sua presença:');
  var entradaPresenca = stdin.readLineSync();
  var presenca = double.parse(entradaPresenca!);


  if (presenca >= 75) {
    if(nota >= 6){
      // APROVADO por Nota
      print("Você foi aprovado!");

    }else{      
      // Solicitação da nota da Recuperação
      print('Informe a sua nota na Recuperação:');
      var entradaRecuperacao = stdin.readLineSync();
      var recuperacao = double.parse(entradaRecuperacao!);

      if(recuperacao >= 6){
        // APROVADO pela Recuperação
        print("Você foi aprovado na recuperação!");
      }else{
        // REPROVADO pela nota && recuperacao
        double notaFaltou = 6 - nota;
        print("Você reprovou! Faltou $notaFaltou ponto(s) para ser aprovado.");
      }      
    }
  }else{
    // REPROVADO por Frequência
    print("Você reprovou por frequência!");
  }
} 