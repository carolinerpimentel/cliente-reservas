class Cliente{

  final String? _nome;
  final List<String?> _reservas = [];

  Cliente(this._nome);

    void _exibirReservas(){

    print('Reservas atuais de $_nome: $_reservas');
  }

  void realizarReserva(String? quarto){

    _reservas.add(quarto);
    print('Reserva adicionada com sucesso! Quarto: $quarto, Cliente: $_nome');
    _exibirReservas();

  }

  void cancelarReserva(String? quarto){

    print(_reservas.contains(quarto));
    
    if(_reservas.contains(quarto)){
    
      _reservas.remove(quarto);
      print('Reserva cancelada com sucesso! Quarto: $quarto, Cliente: $_nome');
      _exibirReservas();

    } else {

      print("Quarto $quarto não encontrado! Digite um quarto já reservado anteriormente!");
      _exibirReservas();
    }
  }


  


}