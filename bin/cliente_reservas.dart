import 'package:cliente_reservas/cliente.dart';

void main() {

  Cliente cli1 = Cliente('Joaquim');

  cli1.realizarReserva('20');
  cli1.realizarReserva('30');
  cli1.realizarReserva('40');

  cli1.cancelarReserva('15');

} 
  
