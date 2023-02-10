Cenário de GUI


Feature: Cancelamento de pedidos
In order to Eu possa gerenciar melhor meus pedidos
As an Usuário/Cliente
Eu preciso poder cancelar meus pedidos




Scenario: Cancelar pedido sem estar logado.
Given Eu estou na página “Ecommerce- Home Page” porém ainda não logado.
When Eu clico no campo “Histórico de pedidos”
Then o usuário é redirecionado para página de login”


Scenario: Cancelar pedido logado porém sem digitar senha de confirmação.
Given Eu estou na página “Meus pedidos” logado como usuário “Kennedy” e visualizando meu “Histórico de pedidos”
When Eu clico no campo “cancelar” do pedido “camisa polo”
And deixo em branco o campo de senha e clico no campo “confirmar”
Then aparece a mensagem de erro “Você precisa preencher o campo com sua senha”.

Scenario: Cancelar pedido logado porém digitando senha errada
Given Eu estou na página “Meus pedidos” logado como usuário “Kennedy” e visualizando meu “Histórico de pedidos”
When Eu clico no campo “cancelar” do pedido “camisa polo”
And digito “Eu odeio ESS” no campo de senha e clico no campo “confirmar”
Then aparece a mensagem de erro “Senha errada”.

Scenario: Cancelar pedido logado porém digitando senha certa
Given Eu estou na página “Meus pedidos” logado como usuário “Kennedy” e visualizando meu “Histórico de pedidos”
When Eu clico no campo “cancelar” do pedido “camisa polo”
And digito “Eu odeio ESS” no campo de senha e clico no campo “confirmar”
Then o pedido “camisa polo” será excluída da Histórico de pedidos
And Aparece a mensagem de confirmação “Senha correta. camisa polo cancelada de seu Histórico de pedidos com sucesso.”










IGNORAR PARTE DE BAIXO




Scenario: Preenchimento de aluno com sucesso
	Given estou na página “Avaliação” logado como “aluno” nomeado “Kennedy”
	When eu preencho todos os campos “Avaliação Aluno” e confirmo
	Then Eu vejo “uma mensagem de confimação”

Cenário de Serviço
Scenario: Preenchimento de aluno com sucesso
	Given aluno “Kennedy” logado e sem notas preenchidas por ele
	When eu preencho todos os campos “Avaliação Aluno” e confirmo
	Then o sistema armazena o aluno “Kennedy” como todas as notas dadas para as metas.

Cenário de GUI
Scenario: Preenchimento de aluno com erro
	Given estou na página “Avaliação” logado como “aluno” nomeado “Kennedy”
	When eu preencho alguns (mas não todos) campos “Avaliação Aluno” e confirmo
	Then Eu vejo “uma mensagem de erro”

Cenário de Serviço
Scenario: Preenchimento de aluno com erro
	Given aluno “Kennedy” logado e sem notas preenchidas por ele
	When eu preencho alguns (mas não todos) campos “Avaliação Aluno” e confirmo
	Then o sistema não armazena o aluno “Kennedy” como suas metas atribuidas.


Scenario: Sem auto-avaliação discrepante
	Given Eu estou logado como “professor” nomeado “Antônio”
And O aluno “Marcos” possui 1 uma auto-avaliação discrepante em relação ao total de 5 metas.
And O aluno “Ricardo” possui todas auto-avaliações inferiores às avaliações do professor.
And O aluno “Pedro” possui todas auto-avaliações iguais às avaliações do professor.
When eu acessar a página “auto-avaliações discrepantes”
	Then a “Quantidade de alunos discrepantes” será 0, a “Procentagem de alunos discrepantes” será 0% e a “Lista de alunos discrepantes” estará vazia.


Scenario: 1 Aluno discrepante de 3
	Given Eu estou logado como “professor” nomeado “Antônio”
And O aluno “Marcos” possui 3 auto-avaliações discrepantes em relação ao total de 5 metas.
And O aluno “Ricardo” possui 1 auto-avaliação discrepantes em relação ao total de 5 metas.
And O aluno “Pedro” possui 1 auto-avaliação discrepantes em relação ao total de 5 metas.
When eu acessar a página “auto-avaliações discrepantes”
	Then a “Quantidade de alunos discrepantes” será 1, a “Procentagem de alunos discrepantes” será 33,3% e a “Lista de alunos discrepantes” estará apenas com o aluno “Marcos”.

Scenario: Cancelar pedido logado porém sem digitar senha de confirmação.
Ideia: Irá requisitar senha no campo requisitado

Scenario: Cancelar pedido logado porém digitando senha errada
Ideia: Irá avisar que a senha está errada

Scenario: Cancelar pedido sem estar logado.
Ideia: não irá funcionar, precisando fazer o login

Scenario: Cancelar pedido logado e digitando senha de confirmação certa.
Ideia: Irá avisar que o pedido foi cancelado com sucesso.
Then verá página confirmada.

Scenario: Cancelar pedido logado e digitando senha com caracteres especiais.
Ideia: Irá avisar que não aceita caracteres especiais.
Reparo
Reparo
Reparo

Novo commit 1
novo commit 1 desenvolvimento
novo commit 2 desenvolvimento
