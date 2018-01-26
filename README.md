# numero_ordinal
Método simples em ruby para transformar uma string contendo um número em uma string com o seu texto ordinal

Se você for usar isso numa aplicação rails coloque esse arquivo no seu initialize.

Exemplo: "123".numero_ordinal ou 123.to_s.numero_ordinal retornará centésimo vigésimo terceiro.
O parâmetro opcional é para que o texto fique no gênero feminino retornará centésima vigésima terceira.