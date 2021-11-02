import 'Cliente.dart';

class ContaCorrente{
  late Cliente titular;
  int _agencia =0;
  


  int conta = 0;
  double _saldo = 20.0;
  double chequeEspecial = -100;

  //----------------------
  //getter e setter padrão

  int get agencia => _agencia;
  set agencia(int agenciaNova) => {_agencia = agenciaNova};


  // getter e setter personalizado
  set saldo(double saldoNovo){
    if(saldoNovo >= chequeEspecial){
      this._saldo = saldoNovo;
    }else{
      print('**Movimentando R\$ $saldoNovo reais.');
    }
  }

  double get saldo{
    return _saldo;
  }

  //--------------------------------

  bool __verificaSaldo(double valor){

    if(_saldo - valor < chequeEspecial){
      print('**Sem saldo suficiente.');
      return false;
    }else{
      print('**Movimentando R\$ $valor reais.');
      return true;
    }
  }


  bool tranferencia(double valorDeTransferencia, ContaCorrente contaDestino){
    if(!__verificaSaldo(valorDeTransferencia)){
      _saldo -= valorDeTransferencia;
      contaDestino.deposito(valorDeTransferencia);
      return true;
    }else{
      return false;
    }

  }

  double deposito(double valorDoDeposito){
    
    if(valorDoDeposito > 0){
      this._saldo += valorDoDeposito;
      print('**Deposito realizado com sucesso, seu novo saldo é de R\$ $_saldo');
      return this._saldo;
    }else{
      print('**Valor inferior a R\$1 .');
      return -1;
    }
  }

  bool saque(double valorDoSaque){
    if(!__verificaSaldo(valorDoSaque)){
      return false;
    }else{
      this._saldo -= valorDoSaque;
      return true;
    }
  }

  String toString(){
    return "\n--------------------------\n"+
           "Tranferencia\n{\n titular: ($titular),\n agencia: $agencia,\n conta: $conta,\n saldo: $_saldo\n}\n"+
           "\n--------------------------\n";
  }
}