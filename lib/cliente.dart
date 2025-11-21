class Cliente{

  final String? _nome;
  final List<String?> _reservas = [];

  Cliente(this._nome);

  void _exibirMensagemConfirmacao(String acao, String? quarto){ 

    print('Reserva $acao com sucesso! Quarto: $quarto, Cliente: $_nome');
        
  }

  void _exibirReservas(){

    print('Reservas atuais de $_nome: $_reservas');

  }

  void realizarReserva(String? quarto){

    _reservas.add(quarto);
    _exibirMensagemConfirmacao('realizada', quarto);
    _exibirReservas();

  }

  void cancelarReserva(String? quarto){

    if(_reservas.contains(quarto)){
    
      _reservas.remove(quarto);

      _exibirMensagemConfirmacao('cancelada', quarto);
      _exibirReservas();

    } else {

      print("Quarto $quarto não encontrado! Digite um quarto já reservado anteriormente!");

      _exibirReservas();
    }
  }


  


}