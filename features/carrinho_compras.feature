FUNCIONALIDADE 3: Carrinho de compras (João)

Scenario: Carrinho de compras vazio (cenário de falha)
Ideia geral: O usuário tenta apertar no botão de efetuar o pagamento
de um carrinho de compras vazio, mas é impedido pela não seleção de produtos.

Scenario: Carrinho de compras abandonado (cenário de falha)
Ideia geral: O usuário seleciona itens para o seu carrinho de compras,
porém ele sai do site. Quando ele voltar o carrinho deve estar com os
itens que ele selecionou anteriormente.

Scenario: Carrinho de compras completo (cenhário de sucesso)
Ideia geral: O usuário seleciona seus itens para o carrinho e
consegue concluir a compra de forma bem sucedida.

Scenario: Carrinho de compras incompleto (cenário de falha)
Ideia geral: O usuário seleciona seus itens, mas na hora de concluir dá algum problema,
<<<<<<< HEAD
seja pela falta de endereço ou até mesmo por um erro no pagamento
=======
seja pela falta de endereço ou até mesmo por um erro no pagamento
    Given: o usuário seleciona os produtos para o carrinho
    When: ele chega na hora de fazer o pagamento
    Then: ele percebe que não está logado e que não consegue efetuar a compra
>>>>>>> then atualizado na branche desenvolvimento
