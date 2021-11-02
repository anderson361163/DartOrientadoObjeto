import '../Exceptions/CpfInvalido.dart';

class Cliente{
  static int totalClientes = 0; 
  String nome = "";
  String _cpf = "";
  String _profissao = "";


  Cliente(String nomeNovo, String cpf, String profissao){
    this.nome = nomeNovo;
    this.cpf = cpf;
    this.profissao = profissao;
    totalClientes++;
  }

  String get profissao =>  _profissao;
  set profissao(String profissao) => { _profissao = profissao};

  String get cpf =>  _cpf;
  set cpf(String cpf) => {
    
   if(validaCpf(cpf)){
     _cpf = cpf
   }else{
     throw new CpfInvalido().cause
   }
  };

  String toString(){
    return  "Cliente{ titular: $nome; , agencia: $cpf , conta: $profissao }";
  }

  validaCpf(String cpf){
    return true;
  }
}