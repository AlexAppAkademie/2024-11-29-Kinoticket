void main(List<String> args) {
  int ticketnummer = 12;

  // 1) Reihe berechnen
  int reihe = (ticketnummer - 1) ~/ 12 + 1;

  // 2) Platz berechnen
  int platz = (ticketnummer - 1) % 12 + 1;

  // 3) Preis berechnen
  int preis = platz % 2 == 0 ? 15 : 12;

  print('TICKET-INFO');
  print('Reihe: $reihe');
  print('Platz: $platz');
  print('Preis: $preis');
}