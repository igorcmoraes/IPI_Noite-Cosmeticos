<h1>IPI_Noite-Cosmeticos</h1>
<h2>Correções Necessárias:</h2>
<ul>
  <li>Estruturem melhor a árvore de arquivos (a organização do diretório em arquivos e pastas)</li>
  <li>Padronize o header, faça com que fique visualmente igual para todas as páginas.</li>
  <li>Remova a rolagem lateral que está acontecendo no site.</li>
  <li>Insira no formulário de contato entradas que são relacionadas ao tema. Lembre-se de configurar o label corretamente.</li>
  <li>Na página produtos, as imagens estão com alt genérico.</li>
  <li>Tem um uso totalmente indevido da tag h3, conserte esse problema.</li>
  <li>Insira / ao final das tags sem fechamento</li>
  <li>O favicon não funciona. Configure isso.</li>
  <li>preco foi criado como int, crie-o como decimal.</li>
  <li>quantidade_produto foi criado como varchar, crie-o como algo numérico.</li>
  <li>stat precisa de outro valor, algum que indica que ainda não foi enviado.</li>
  <li>Numa entidade associativa, não devemos colocar as chaves estrangeiras como AUTO_INCREMENT, e isso foi feito nesse banco. A chave primária sim pode ser AUTO_INCREMENT, mas a estrangeira não.</li>
  <li>Adicione em produto um atributo para descrição do produto. Isso deve ser alterado tanto no código quanto no DER.</li>
</ul>
