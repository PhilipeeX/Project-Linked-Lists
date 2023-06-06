# Lista Encadeada

Este é um projeto em Ruby que implementa uma estrutura de dados básica de lista encadeada. A lista encadeada consiste em nós que estão conectados por meio de ponteiros, permitindo a inserção e remoção eficientes de elementos.

## Introdução

Na ciência da computação, as listas encadeadas são estruturas de dados fundamentais que funcionam de forma semelhante a arrays, mas oferecem benefícios adicionais. Uma vantagem das listas encadeadas é a capacidade de inserir ou remover elementos sem a realocação de memória para toda a estrutura de dados. Embora os arrays em Ruby não tenham uma limitação de tamanho fixo, aprender sobre listas encadeadas pode fornecer uma base sólida para entender estruturas de dados mais complexas, como grafos e árvores binárias.

## Estrutura de uma Lista Encadeada

Uma lista encadeada é uma coleção de nós, onde cada nó contém dados e um ponteiro para o próximo nó. O primeiro nó é chamado de cabeça (head), e o último nó é chamado de cauda (tail). Aqui está uma representação básica de uma lista encadeada:

`[ NÓ(cabeça) ] -> [ NÓ ] -> [ NÓ(cauda) ] -> nil` 

Para uma explicação mais detalhada, você pode consultar os seguintes recursos:

-   [Listas Encadeadas em Linguagem Clara](https://levelup.gitconnected.com/linked-lists-in-plain-english-a18bf81dcbeb)
-   [O que é uma Lista Encadeada, Afinal?](https://www.codecademy.com/articles/what-is-a-linked-list)
-   [Listas Encadeadas, a Estrutura de Dados Ausente do Ruby](https://www.rubyguides.com/2017/08/ruby-linked-list/)

## Classes

Este projeto consiste em duas classes:

### LinkedList

A classe `LinkedList` representa a lista encadeada completa. Ela fornece diversos métodos para interagir com a lista.

Métodos disponíveis na classe `LinkedList`:

-   `#append(value)`: Adiciona um novo nó contendo o valor fornecido ao final da lista.
-   `#prepend(value)`: Adiciona um novo nó contendo o valor fornecido ao início da lista.
-   `#size`: Retorna o número total de nós na lista.
-   `#head`: Retorna o primeiro nó da lista.
-   `#tail`: Retorna o último nó da lista.
-   `#at(index)`: Retorna o nó no índice especificado.
-   `#pop`: Remove o último elemento da lista.
-   `#contains?(value)`: Retorna verdadeiro se o valor fornecido estiver presente na lista, caso contrário, retorna falso.
-   `#find(value)`: Retorna o índice do nó que contém o valor fornecido ou nil se não for encontrado.

### Node

A classe `Node` representa um nó individual na lista encadeada. Cada nó contém um valor e uma referência para o próximo nó na lista.

Métodos disponíveis na classe `Node`:

-   `#value`: Retorna o valor armazenado no nó.
-   `#next_node`: Retorna a referência para o próximo nó na lista.

## Uso

Aqui está um exemplo de uso da lista encadeada:
     # Cria uma nova lista encadeada
    list = LinkedList.new
    
    # Adiciona elementos à lista
    list.append(node1)
    list.append(node2)
    list.prepend(node2)
    
    # Obtém o tamanho da lista
    size = list.size
    puts "Tamanho da lista: #{lista.size}" # Saída: Tamanho da lista: 3
    
    # Obtém o primeiro nó da lista
    head = list.head
    puts "Primeiro nó: #{head.value}" # Saída: Primeiro nó: 5
    
    # Obtém o último nó da lista
    tail = list.tail
    puts "Último nó: #{tail.value}" # Saída: Último nó: 20
    
    # Obtém o nó no índice 1
    node = list.at(1)
    puts "Nó no índice 1: #{node.value}" # Saída: Nó no índice 1: 10
    
    # Remove o último elemento da lista
    list.pop
    
    # Verifica se a lista contém o valor 10
    contains_10 = list.contains?(10)
    puts "Contém 10? #{contains_10}" # Saída: Contém 10? false
    
    # Encontra o índice do valor 20
    index_20 = list.find(20)
    puts "Índice do valor 20: #{index_20}" # Saída: Índice do valor 20: 1
    
    # Imprime a representação da lista encadeada
    puts list.to_s # Saída: ( 5 ) -> ( 10 ) -> nil