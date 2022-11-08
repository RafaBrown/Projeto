<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro De Fornecedores</title>
    <link rel ="stylesheet" href="funcionarios.css">
    
</head>
<body>
	<form name="formFuncionario" action="../insertFunc">
	    <table>
	    <div class="h2">
	        <img class="caminhao" src="data:image/png;base64,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">
	        <h2 class="cadastro">Cadastro De Funcionarios </h2>
	        <input type="button" value="&#128190;Salvar" class="save" onclick="sub()" >
	    </div>
	    <div>
	        <div class="funcionario">
	            <label>Código do funcionário</label>
	            <input class="texto1" name="id" type="text">
	        </div>
	        <div class="name" >
	            <label>Nome</label>
	            <input class="texto2" name="nome" type="text">
	        </div>
	
	        <div class="cargo">
	            <label>Cargo</label>
	            <input class="texto8" name="cargo"  type="text">
	        </div>
	
	        <div class="number">
	            <label>Senha</label>
	            <input class="texto14" name="senha" type="password" maxlength="10">
	        </div>
	
	        <div class="email">
	            <label>Digite a senha novamente</label>
	            <input class="texto17" name="vazio" type="password" maxlength="10">
	        </div> 
	
	    </div>
	    </table></form>
	    <script src="../Scripts/validador.js"></script>
</body>
</html>