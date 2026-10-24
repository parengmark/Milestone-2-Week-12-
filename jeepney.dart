class Jeepney {
  String route;
  int capacity;

  int _currentPassengers = 0;

  Jeepney(this.route, this.capacity);

  int get passengers => _currentPassengers;

  void board(int count) {
    if (_currentPassengers + count <= capacity) {
      _currentPassengers += count;
      print('$count passenger(s) boarded the $route jeepney. Total: $_currentPassengers');
    } else {
      print('Cannot board $count passengers on the $route jeepney. Over capacity!');
    }
  }

  void disembark(int count) {
    if (_currentPassengers - count >= 0) {
      _currentPassengers -= count;
      print('$count passenger(s) got off the $route jeepney. Total: $_currentPassengers');
    } else {
      print('Error: Invalid disembark count.');
    }
  }
}

void main() {
  Jeepney jeep1 = Jeepney('Cubao - Silangan', 20);
  Jeepney jeep2 = Jeepney('Fairview - Quiapo', 22);
  Jeepney jeep3 = Jeepney('Taft - Monumento', 18);

  List<Jeepney> fleet = [jeep1, jeep2, jeep3];

  print('--- Jeepney Fleet Operations ---');
  
  fleet[0].board(15);
  fleet[0].board(10);

  fleet[1].board(20);
  fleet[1].disembark(5);

  fleet[2].board(18);

  print('\n--- End of Day Fleet Status ---');
  
  for (var jeep in fleet) {
    print('Route: ${jeep.route} | Capacity: ${jeep.capacity} | Current Passengers: ${jeep.passengers}');
  }
}
