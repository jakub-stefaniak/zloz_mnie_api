import 'package:dart_frog/dart_frog.dart';

final subjects = [
  {
    'id': 0,
    'title': 'Prawa niemajątkowe',
    'body':
        'łącznie z nimi dochodzone roszczenia majątkowe oprócz spraw o ustalenie lub zaprzeczenie pochodzenia dziecka, o ustalenie bezskuteczności uznania ojcostwa oraz o rozwiązanie przysposobienia',
  },
  {
    'id': 1,
    'title': 'Roszczenia wynikające z Prawa prasowego',
    'body': '',
  },
  {
    'id': 2,
    'title': 'Prawa majątkowe',
    'body':
        'kiedy wartość przedmiotu sporu przewyższa siedemdziesiąt pięć tysięcy złotych, oprócz spraw o alimenty, o naruszenie posiadania, o ustanowienie rozdzielności majątkowej między małżonkami, o uzgodnienie treści księgi wieczystej z rzeczywistym stanem prawnym oraz spraw rozpoznawanych w elektronicznym postępowaniu upominawczym',
  },
  {
    'id': 3,
    'title': 'Prawa majątkowe',
    'body':
        'kiedy wartość przedmiotu sporu przewyższa siedemdziesiąt pięć tysięcy złotych, oprócz spraw o alimenty, o naruszenie posiadania, o ustanowienie rozdzielności majątkowej między małżonkami, o uzgodnienie treści księgi wieczystej z rzeczywistym stanem prawnym oraz spraw rozpoznawanych w elektronicznym postępowaniu upominawczym',
  }
];

Response onRequest(RequestContext context) {
  return Response.json(body: subjects);
}
