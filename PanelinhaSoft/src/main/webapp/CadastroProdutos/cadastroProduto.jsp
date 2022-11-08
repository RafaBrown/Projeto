<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cadastroProduto.css">
    <title>Cadastro De Produtos</title>
</head>
<body>
      <div class="h2">
      <h2>&#128722; Cadastro De Produtos</h2>
      </div>
      <input type="button" value="Cadastrar" onclick="subProduto()" >
    <form name="formProduto" action="insertProd">
	    <table> <div class="name" >
	        <label>Nome Do Produto</label></br>
	        <input  type="text" name="nome">
	     </div>
	     <div class="codigo" >
	        <label>Código De Barras</label></br>
	        <input type="text" name="codbarr">
	     </div> 
	     <div class="preco" >
	        <label>Preço De Venda</label></br>
	        <input type="number" name="preco">
	      </div>
	      <div class="qtd">
	        <label>Quantidade Total</label></br>
	        <input  type="number" name="qntd">
	      </div>
	      <div class="codForn">
	        <label>Código fornecedor</label></br>
	        <input  type="number" name="codFornecedor">
	      </div>
	      <div class="data" >
	        <label>Data De Validade</label></br>
	        <input type="date" name="validade">
	     </div>
    </table></form>
    <script src="../Scripts/validador.js"></script>
</body>
</html>