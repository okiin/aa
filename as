a declaracao de variaveis public pode ser alterada por qualquer um
public variavel

ENCAPSULAMENTO 
e a declaracao de variavel private nao deixa ninguem altarar ou mudar o valor 
private variavel

CONSTRUCTOR
criar metodo constructor dentro da classe sem ter que declarar e atribuir os valores depois
usando o metodo public
  "constructor(public nome:string, public nivel:number, public poluido:boolean )"
    
 MODO DE USAR BOOLEAN E MUDAR A RESPOSTA TRUE E FALSE PARA OQUE DESEJAR COM UMA ESPECIE DE "PERGUNTA"
Ao inves de mostrar true ou false ele coloca o que fica entre as aspas '' 
    ${this.poluido ? 'Sim' : 'nao'}`

LUCID CHART
Usar o lucid chart para clarear a questao em duvida, so colocar no biblioteca de formas a opcao UML
Associação todo parte

AGREGAÇÃO
o diamente a assosiação entre classes se ele não estiver totalmente preenchido e uma "agreação"
uma associção "fraca" o exemplo do daniel toda vez que a cardinalidade for N do lado do diamante, temos uma agregação
Agregação é um conceito de orientação a objetos que representa a relação entre dois objetos onde um objeto contém uma ou mais instâncias de outro objeto como parte de sua
estrutura. Em outras palavras, a agregação é uma relação "tem-um" entre duas classes, onde uma classe é parte da outra classe.

CODIGO AGREGAÇÃO (CHATGPT)
class Produto {
  nome: string;
  preco: number;

  constructor(nome: string, preco: number) {
    this.nome = nome;
    this.preco = preco;
  }
}

class Pedido {
  produtos: Produto[];
  data: Date;

  constructor(produtos: Produto[], data: Date) {
    this.produtos = produtos;
    this.data = data;
  }

  getValorTotal(): number {
    let valorTotal = 0;
    for(let produto of this.produtos) {
      valorTotal += produto.preco;
    }
    return valorTotal;
  }
}
EXEMPLOS AGREGAÇÃO
1-Uma pessoa tem um ou mais telefones: Nesse exemplo, uma pessoa pode ter um ou mais telefones,
mas o telefone não é exclusivo dessa pessoa. Ou seja, outros objetos também podem possuir uma instância da classe "Telefone".
2-Um carro tem um motor: Nesse exemplo, a classe "Carro" possui um objeto da classe "Motor", que é responsável por gerar a potência do veículo.
3-Uma escola tem vários alunos: Nesse exemplo, a classe "Escola" possui um array de objetos da classe "Aluno", representando todos os alunos matriculados na instituição.
4-Uma casa tem vários móveis: Nesse exemplo, a classe "Casa" possui um array de objetos da classe "Móvel", que representam os móveis presentes na residência.
5-Uma conta bancária tem várias transações: Nesse exemplo, a classe "ContaBancaria" possui um array de objetos da classe "Transacao", que representam todas as operações 
realizadas na conta.


COMPOSIÇÃO
se o diamente estiver totalmente preenchido e representado como uma "composição" ele está contido representado como associação "forte" exemplo do daniel se você eliminar
o item do carrinho o carrinho também é eliminado em outras palavras se a classe parte depende do todo, se o todo for eliminado a parte também será
Toda vez que a cardinalidade 1 do lado do todo 1 for ao lado do diamante preenchido 
Composição é outro conceito importante em orientação a objetos e representa a relação entre duas classes onde um objeto é composto por um ou mais objetos de outra classe. 
Em outras palavras, a composição é uma relação "parte-de" entre duas classes, onde uma classe é parte da outra classe.

CODIGO COMPOSIÇÃO (CHATGPT)
class Motor {
  potencia: number;

  constructor(potencia: number) {
    this.potencia = potencia;
  }
}

class Carro {
  marca: string;
  modelo: string;
  motor: Motor;

  constructor(marca: string, modelo: string, motor: Motor) {
    this.marca = marca;
    this.modelo = modelo;
    this.motor = motor;
  }

  getDescricao(): string {
    return `${this.marca} ${this.modelo} - Motor ${this.motor.potencia}cv`;
  }
}
EXEMPLOS DE COMPOSIÇÃO 
1-Um computador é composto de uma CPU, memória RAM, placa-mãe, disco rígido e outros componentes: 
Nesse exemplo, a classe "Computador" é composta de várias outras classes, representando os componentes físicos do dispositivo.
2-Um livro é composto de páginas: Nesse exemplo, a classe "Livro" é composta de um array de objetos da classe "Pagina", representando as páginas do livro.
3-Uma empresa é composta de vários departamentos: Nesse exemplo, a classe "Empresa" é composta de um array de objetos da classe "Departamento", representando os setores da organização.
4-Um carro é composto de várias rodas: Nesse exemplo, a classe "Carro" é composta de um array de objetos da classe "Roda", representando as rodas do veículo.
5-Uma casa é composta de cômodos: Nesse exemplo, a classe "Casa" é composta de um array de objetos da classe "Cômodo", representando os cômodos da residência.


 IMPORT
import siginifica que você está importando uma classe para a classe "atual" exemplo você esta na classe campo voce usa import { bola } from "./bola"; e assim você linkou 
as classes com isso você pode usar o método da classe bola na classe campo

SET E GET 
Em orientação a objetos, set e get são métodos que permitem definir e obter os valores de atributos de uma classe, respectivamente.
class Pessoa {
  nome: string;
  idade: number;

  constructor(nome: string, idade: number) {
    this.nome = nome;
    this.idade = idade;
  }

  getNome(): string {
    return this.nome;
  }

  setNome(novoNome: string): void {
    this.nome = novoNome;
  }

  getIdade(): number {
    return this.idade;
  }

  setIdade(novaIdade: number): void {
    this.idade = novaIdade;
  }
}

Nesse exemplo, criamos uma classe chamada "Pessoa" com os atributos "nome" e "idade". O construtor da classe recebe os parâmetros "nome" e "idade" e atribui seus valores aos respectivos atributos da classe.
Em seguida, definimos os métodos getter e setter para cada um dos atributos. Os métodos getters retornam o valor do atributo correspondente e os métodos setters recebem um valor como parâmetro e o atribuem ao 
atributo correspondente. Além disso, os métodos setters não retornam nada, por isso usamos "void" como tipo de retorno.
Agora, podemos criar uma instância da classe Pessoa e usar seus métodos getters e setters para obter e definir os valores dos atributos, como no exemplo abaixo:

HERANÇA
a herança será usada quando uma classe "PAI" precisar passar seuas variaveis para seus "FILHOS"
para fazer o comando de herança ira usar "extends" em seguida do nome da classe pai
CODIGO HERANÇA (CHATGPT)
class Animal {
  nome: string;
  peso: number;

  constructor(nome: string, peso: number) {
    this.nome = nome;
    this.peso = peso;
  }

  fazerBarulho(): void {
    console.log("Fazendo barulho...");
  }
}

class Cachorro extends Animal {
  raca: string;

  constructor(nome: string, peso: number, raca: string) {
    super(nome, peso);
    this.raca = raca;
  }

  latir(): void {
    console.log("Au au!");
  }
}
TO STRING HERANÇA
no toString das classes filhas se usa super.toString() para puxar o toSting da classe pai
no GET o parametro e vazio mas precisa declarar o tipo ():string
no seters passa a variavel como parametro e o tipo dela (variavel:string)

CONSTRUCTOR HERANÇA
no constructor se passa as variaveis pela função super(fulano,ciclano,...)

USANDO VETOR EM TYPESCRIPT
Para criar um vetor em TypeScript, primeiro é necessário criar uma classe que represente os elementos que serão armazenados nesse vetor.

CODIGO VETOR
class Pessoa {
  nome: string;
  idade: number;

  constructor(nome: string, idade: number) {
    this.nome = nome;
    this.idade = idade;
  }

  // métodos da classe Pessoa aqui
}
let pessoas: Pessoa[] = [];

// adicionando elementos ao vetor
let pessoa1 = new Pessoa("João", 30);
let pessoa2 = new Pessoa("Maria", 25);
let pessoa3 = new Pessoa("Pedro", 40);

pessoas.push(pessoa1);
pessoas.push(pessoa2);
pessoas.push(pessoa3);
// percorrendo o vetor e exibindo as informações de cada pessoa
for(let i = 0; i < pessoas.length; i++) {
  console.log(`Nome: ${pessoas[i].nome}, Idade: ${pessoas[i].idade}`);
}
Nesse exemplo, usamos um loop "for" para percorrer todos os elementos do vetor "pessoas". Para cada objeto "Pessoa" no vetor, exibimos seu nome e idade no console.
Esse é um exemplo simples de como criar e manipular um vetor em TypeScript com orientação a objetos. Você pode adaptar esse exemplo para criar vetores de outras classes ou 
com outros tipos de elementos.

ANULAÇÃO DE METODOS

Quando uma classe filha herda de uma classe pai, ela também herda todos os métodos da classe pai. No entanto, a classe filha pode escolher anular (ou "sobrescrever") esses métodos para fornecer uma implementação diferente. 
Isso é chamado de polimorfismo, que é uma das principais características da orientação a objetos.



CODIGO ANULAÇÃO 
class Animal {
    public fazerSom() {
      console.log("som de animal");
    }
}
  
class Cachorro extends Animal {
    public fazerSom() {
      console.log("au au");
    }
}
  
class Gato extends Animal {
    public fazerSom() {
      console.log("miau");
    }
}
  
const animal = new Animal();
animal.fazerSom(); // output: "som de animal"
  
const cachorro = new Cachorro();
cachorro.fazerSom(); // output: "au au"
  
const gato = new Gato();
gato.fazerSom(); // output: "miau"

POLIMORFISMO
Polimorfismo é um conceito em programação orientada a objetos que permite que objetos de diferentes classes respondam ao mesmo método de forma diferente. 
Isso é útil porque permite que o mesmo método seja reutilizado em diferentes contextos, tornando o código mais flexível e extensível.


CODIGO POLIMORFISMO
Um exemplo simples de polimorfismo em código pode ser uma classe "Animal" que define um método "fazerSom". As classes "Cachorro" e "Gato" herdam da classe "Animal" e sobrescrevem o método
"fazerSom" com implementações diferentes. 
Por exemplo, o método "fazerSom" da classe "Cachorro" pode imprimir "Au au", enquanto o método "fazerSom" da classe "Gato" pode imprimir "Miau".

class Animal {
  fazerSom() {
    console.log("Som genérico de animal");
  }
}

class Cachorro extends Animal {
  fazerSom() {
    console.log("Au au");
  }
}

class Gato extends Animal {
  fazerSom() {
    console.log("Miau");
  }
}

let cachorro = new Cachorro();
let gato = new Gato();

cachorro.fazerSom(); // Saída: "Au au"
gato.fazerSom(); // Saída: "Miau"
