void main(List<String> args) {
  int ticketnummer = 12;

  // Maschinen oder Computer zählen oft ab 0 (nicht ab 1 wie wir Menschen). 
  // Deshalb tricksen wir ein bisschen, indem wir anfangs 1 von der Ticketnummer abziehen. 
  // So schalten wir quasi in den 'Maschinen-Modus' um.
  ticketnummer = ticketnummer - 1;

  // 1) Reihe berechnen

  // Wenn wir die Ticketnummer jetzt durch 12 rechnen,
  // berechnen wir quasi, wie viele Reihen schon 'voll' sind
  // (bei Tickets 1-12 sind noch 0 Reihen voll)
  int reihe = ticketnummer ~/ 12;

  // Um dann richtig anzeigen zu lassen, in welcher Reihe wir uns befinden,
  // müssen wir nochmal 1 addieren
  reihe = reihe + 1;

  // 2) Platz berechnen

  // Wenn wir die Ticketnummer modulo 12 rechnen, sehen wir FAST direkt, 
  // den wievielten Platz wir in der aktuellen 12er Reihe haben
  int platzInMaschinenmodus = ticketnummer % 12;

  // Dieser ist allerdings um eins verschoben, weil wir ja anfangs
  // die Ticketnummer um 1 reduziert haben, weshalb wir wieder 1 addieren
  int platz = platzInMaschinenmodus + 1;

  // 15€ für gerade, 12€ für ungerade Platznummern
  // Wie machen wir das, ohne Programmierkonzepte zu benutzen,
  // die wir zwar schon gesehen, aber noch nicht benutzt haben?
  // Mit einem Standardpreis von 15€ und einem potenziellen Rabatt von 3€!
  int standardpreis = 15;

  // Wenn unser Platz gerade, also durch zwei teilbar ist
  // (also bei Division durch 2 kein Rest übrig bleibt),
  // ist der Rabattfaktor 0 (d.h. es gibt im nächsten Schritt keinen Rabatt)
  int rabattFaktor = platz % 2; // Ergebnis entweder 0 (bei geradem Platz) oder 1 (bei ungeradem Platz)

  // Der Rabatt ist entweder 3*0 (0€), wenn es ein gerader Platz ist, oder 3*1 (3€) bei einem ungeraden Platz.
  int rabatt = 3 * rabattFaktor;

  // Den tatsächlichen Endpreis berechnen wir jetzt, 
  // indem wir von unserem Standardpreis von 15€ den berechneten Rabatt (0€ oder 3€) abziehen.
  int endpreis = standardpreis - rabatt;

  print('TICKET-INFO');
  print('Reihe: $reihe');
  print('Platz: $platz');
  print('Preis: $endpreis€');
}