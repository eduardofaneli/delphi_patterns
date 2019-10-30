# Resumo dos 23 Design Pattern do GO:

# Criacionais

1) Abstract Factory: Declara uma Interface responsável por criar uma fábrica de objetos similares sem especificar suas implentações concretas.
2) Builder: Permite encapsular a lógica de construção de objetos, de modo que diferentes representações possam ser construídas com a mesma Interface.
3) Factory Method: Disponibiliza uma forma de reduzir a complexidade ciclomática ao delegar a lógica de criação de objetos para as classes derivadas.
4) Prototype: Permite clonar o estado e as propriedades de um objeto já existente para um novo objeto, criando uma cópia idêntica.
5) Singleton: Provê um ponto único de acesso à instância de um objeto, de modo que qualquer local da aplicação consiga acessá-lo.

# Estruturais

6) Adapter: Atua como intermediário entre duas interfaces, de modo que elas possam se comunicar, tornando-se compatíveis.
7) Bridge: Elimina múltiplas heranças e reduz a quantidade de classes ao desacoplar abstrações de suas implementações.
8) Composite: Proporciona uma técnica para trabalhar com objetos individuais e grupos de objetos (composição) de modo uniforme.
9) Decorator: Visa adicionar comportamentos extras a objetos em tempo de execução, reduzindo a necessidade de criar heranças.
10) Façade: Disponibiliza um acesso simplificado a um conjunto de procedimentos complexos, também definido como “subsistemas”.
11) Flyweight: Aprimora o desempenho e consumo de memória de uma aplicação através do compartilhamento de objetos em tempo de execução.
12) Proxy: Declara uma classe que controla o acesso e utilização de um objeto complexo ou protegido, aprimorando a segurança e/ou performance.

# Comportamentais

13) Chain of Responsibility: Consiste em criar uma cadeia de objetos processadores, no qual cada um é responsável por processar um tipo de mensagem específica.
14) Command: Visa encapsular requisições como objetos e permite a criação de filas de execução de comandos de forma customizada.
15) Interpreter: Define uma representação para uma linguagem e fornece procedimentos para interpretá-la dinamicamente.
16) Iterator: Consiste em um mecanismo para navegar entre os elementos de uma lista sem expor a representação dos dados processados.
17) Mediator: Encapsula a interação entre objetos para reduzir a dependência, promovendo o baixo acoplamento na arquitetura.
18) Memento: Cria um recurso de armazenamento de estados de um objeto, permitindo suas restaurações quando necessário.
19) Observer: Um objeto específico é observado por outros objetos, de modo que estes sejam automaticamente notificados quando uma alteração ocorre no objeto principal.
20) State: Permite que um objeto modifique o seu comportamento de acordo com o seu estado, proporcionando um alto nível de encapsulamento.
21) Strategy: Fornece a capacidade de selecionar um algoritmo em tempo de execução, conforme a situação atual (ou regras de negócio) para executar uma tarefa específica.
22) Template Method: Estabelece uma sequência de passos e permite que alguns deles sejam “delegados” para as subclasses em tempo de execução.
23) Visitor: Orienta a separação de classes de estruturas e de operações, de forma que novos comportamentos possam ser adicionados a objetos sem alterá-los.



# Fonte
[Blog do Andre Celestino](https://www.andrecelestino.com/delphi-design-patterns-retrospectiva/)
