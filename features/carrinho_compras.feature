Feature: Carrinho de compras
        Situações em que o usuário escolhe os itens que deseja
        comprar para poder efetuar o pagamento.

Scenario: Carrinho de compras vazio
Given o usuário "João" está na página de carrinho de compras
And o carrinho de compras está vazio
When o usuário "João" acessa a página de carrinho de compras
Then a mensagem "Seu carrinho está vazio." é exibida
And apenas o botão "Comece a comprar agora" é exibido na página
And o botão de "finalização de pedido" não está presente na página. 

Scenario: Carrinho de compras abandonado
Given que o usuário "João" está na página principal
And o usuário "João" adiciona os itens "Camisa Puma - masculino" e "Camisa Adidas - masculino" ao carrinho de compras
When o usuário "João" sai do site
And depois volta ao site
Then os itens adicionados anteriormente ao carrinho de compras continuam presentes
And o usuário "João" pode continuar e concluir sua compra normalmente.

Scenario: Carrinho de compras completo
Given que o usuário "João" está navegando no site
And o usuário "João" adiciona itens ao seu carrinho de compras
When o usuário "João" vai para a página de finalização de pedido
And preenche as informações necessárias como endereço de entrega e método de pagamento
And clica no botão "Efetuar pagamento"
Then a mensagem "Obrigado, seu pedido foi concluído com sucesso!" é exibida
And o usuário "João" é redirecionado para a página de confirmação do pedido.

Scenario: Carrinho de compras incompleto
Given que o usuário "João" está navegando no site
And o usuário "João" adiciona itens ao seu carrinho de compras
When o usuário "João" vai para a página de finalização de pedido
And tenta efetuar o pagamento sem preencher as informações necessárias ou com informações incorretas
Then a mensagem "Desculpe, houve um problema ao concluir o seu pedido. Por favor, verifique as informações e tente novamente." é exibida
And o usuário "João" é impedido de concluir a compra.