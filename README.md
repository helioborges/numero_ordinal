# numero_ordinal
M�todo simples em ruby para transformar uma string contendo um n�mero em uma string com o seu texto ordinal

Se voc� for usar isso numa aplica��o rails coloque esse arquivo no seu initialize.

Exemplo: "123".numero_ordinal ou 123.to_s.numero_ordinal retornar� cent�simo vig�simo terceiro.
O par�metro opcional � para que o texto fique no g�nero feminino retornar� cent�sima vig�sima terceira.