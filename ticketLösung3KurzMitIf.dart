void main(List<String> args) {
  int ticketnummer = 13;
  ticketnummer--; // Wechsel auf Maschinenzählweise

  // 1) Reihe berechnen
  int reihe = ticketnummer ~/ 12;
  reihe++; // Wechsel zurück zu menschlicher Zählweise

  // 2) Platz berechnen
  int platz = ticketnummer % 12;
  platz++; // Wechsel zurück zu menschlicher Zählweise

  // 3) Preis berechnen
  int preis = 15; // Wir könnten z.B. den Preis für gerade Plätze als Standard setzen

  if (platz % 2 == 1) { // und nur bei ungeraden Plätzen...
    preis = 12; // den Preis ändern
  }

  print('TICKET-INFO');
  print('Reihe: $reihe');
  print('Platz: $platz');
  print('Preis: $preis');
}