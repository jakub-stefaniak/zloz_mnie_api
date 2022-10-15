import 'package:dart_frog/dart_frog.dart';

final subjects = [
  {
    'id': 0,
    'title': 'Prawa niemajątkowe z roszczeniami majątkowymi',
    'body':
        'Art. 17 pkt 1 kpc - za wyjątkiem spraw o ustalenie lub zaprzeczenie pochodzenia dziecka, o ustalenie bezskuteczności uznania ojcostwa oraz o rozwiązanie przysposobienia',
  },
  {
    'id': 1,
    'title': 'Roszczenia wynikające z Prawa prasowego',
    'body':
        'Art. 17 pkt 3 kpc - na gruncie ustawy Prawo prasowe tj. z dnia 14 września 2018 r. (Dz.U. z 2018 r. poz. 1914)',
  },
  {
    'id': 2,
    'title': 'Prawa majątkowe - WPS powyżej 75.000,00 PLN',
    'body':
        'Art. 17 pkt 4 kpc - oprócz spraw o alimenty, o naruszenie posiadania, o ustanowienie rozdzielności majątkowej między małżonkami, o uzgodnienie treści księgi wieczystej z rzeczywistym stanem prawnym oraz spraw rozpoznawanych w elektronicznym postępowaniu upominawczym',
  },
  {
    'id': 3,
    'title': 'Wydanie orzeczenia zastępującego uchwałę o podziale spółdzielni',
    'body': 'Art. 17 pkt 41 kpc - jako podstawa roszczenia',
  },
  {
    'id': 4,
    'title': 'Dotyczące uchwał organów',
    'body':
        'Art. 17 pkt 42 kpc - dotyczących osób prawnych lub jednostek organizacyjnych niebędących osobami prawnymi, którym ustawa przyznaje zdolność prawną - w zakresie ich uchylenia, stwierdzenia nieważności, ustalenia istnienia lub nieistnienia tych uchwał',
  },
  {
    'id': 5,
    'title': 'Prawomocne, niezgodne z prawem orzeczenie',
    'body':
        'Art. 17 pkt 44 kpc - w zakresie odszkodowania z tytułu poniesionej szkody wyrządzonej tym orzeczeniem',
  },
  {
    'id': 6,
    'title': 'Ochrona danych osobowych',
    'body':
        'Art. 17 pkt 45 kpc - wszelkie roszczenia z zakresu przepisów o ochronie danych osobowych',
  }
];

Response onRequest(RequestContext context) {
  return Response.json(body: subjects);
}
