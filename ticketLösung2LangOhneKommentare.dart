void main(List<String> args) {
  int ticketnummer = 12;

  ticketnummer = ticketnummer - 1;

  // 1) Reihe berechnen
  int reihe = ticketnummer ~/ 12;
  reihe = reihe + 1;

  // 2) Platz berechnen
  int platzInMaschinenmodus = ticketnummer % 12;
  int platz = platzInMaschinenmodus + 1;

  // 3) Preis berechnen
  int standardpreis = 15;

  int rabattFaktor = platz % 2; // Ergebnis entweder 0 (bei geradem Platz) oder 1 (bei ungeradem Platz)

  int rabatt = 3 * rabattFaktor;
  
  int endpreis = standardpreis - rabatt;

  print('TICKET-INFO');
  print('Reihe: $reihe');
  print('Platz: $platz');
  print('Preis: $endpreis€');
}