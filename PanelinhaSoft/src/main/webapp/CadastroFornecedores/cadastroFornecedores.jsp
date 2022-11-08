<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro De Fornecedores</title>
    <link rel ="stylesheet" href="cadastroFornecedores.css">
</head>
<body>
	<form name="formFornecedor" action="../insertForn">
	   <table> <div class="h2">
	        <img class="caminhao" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAABmJLR0QA/wD/AP+gvaeTAAAEJElEQVR4nO2Zy28bVRSHv3NpHEeesYXEpukfgBCUiAWkJVQIwQKRbkBsoOoSVNRKPFKBWJAiYNENogg2wLIBsacNsE4qlWxKiRClyyKVTUGyPZO4jjyHBeNo6sx4PPY4D+d+G8v3njO/O8fnnvswWCwWi8VisVgsFss+RHoxqtfrV4AnhzyWZdd1jw1ZYwu9BkCHPRAA13V7Gk+emCzGrutKdJB5f98JMgVgFDmw0wPolT7q0BXHcZ4RkY1uRnspA7IW4Rnf90+nGQ2UAVmLYx7FtJeaUa1WZ40xl1R1vlarLZTL5TtJtv0GYBl4qqNtKUf7VHqcEveLyIfAmSSDTMtgrxV7GPadNhmyqSUijzmOsxrXuWeKYBIpQfsSOK2qnwHPxdnspSKYmSAI5oF/gGer1epsnM1IB6BSqfwrIp8AGGMuqGqh0+ae9NmmPX9Wll3XPZZUA9LqjKqOeZ63CjwoIm85jvN5tL8zA3bby8PW1SMTIrIRBMEcgKqeq9VqD0T7Y6fAsPf8231GqFQql1X1J/5fFs9F+0a6BkQRkXeADeANz/MOt9v3TQBc1/0D+Bq4L1wWgX0UAIBWq/UBHctiTxuhYe/5Bzkj9OtrjDkPXE7LgOWYtrQ9/zDt03yz8AikZEDWO7ph2+flG82aPX8WSENVC77vf6yqJ4GDnf0jHwDf9z9S1XeT+kd+FQh/eVR1Jm6DdQC2ngF2W9XP6Vo+9sduN+7GM0AuiMjF8HOpXq9rZzDvqQE7fUffjX6zoFQqzfu+354Kk539qUdLVS36vn8qCIJXReRhEVHgd1X91nGcr0Tkbpxwv35JxI2xX43os7oGYG1t7VCr1VoEHk0Y13VjzAulUul2Hn7d6BzjIBrRZyWuAqo63mq1fgwFbqnqi+vr626j0Sir6kvAn8BUEASLqjo+qF8W8tRoB6AZPnjzysj3/VPAYeCWMeaIMeboxMTEzWKxeMMYMy0iTwM3gSnP814b1C8Lg2hEAnJ3MwCq+htAvV4/GwnCK+HnnKq+GW4mDgKTqvoe8DbwfmhzIqLRr18W+tJQ1YLneWcBROQ6hEWwVqsdF5Ef4pQajUa5WCzeCB8+AxgRWQJuN5vNhwqFQjVPvywMomGMmS2VSosGoFwuXwqC4LiIrBBOhyQ/IhepItLrstmvXxZ60WiKyEr75aHLP0Oe511V1WngZRF5PEytTUTkvKr+CnwPXHVd9+ggflnIUyPxMKSq3wHTwAUReSJsOxkKXBSRL1R1JTRfGNQvC3lqJGaAqo57nvcLMAX8Bcw1m82fRUTGxsaeBz4FDgHXHMc5IiLNQfwyBiA3ja5z0ff9ySAIFkOhOK6F8+nvPPyykJdGajEKo/26iJwgvEZS1VVgwXGcb5Ki269fFrZDw2KxWCwWi8VisYwm/wHAJAwo/5WpGwAAAABJRU5ErkJggg==">
	        <h2 class="forn">Cadastro De Fornecedores </h2>
	        <button class="search">&#128269; Pesquisar</button> 
	        <input type="button" value="&#128190;Salvar" class="save" onclick="subFornecedor()" >
	    </div>
	    <div>
	        <div class="fornecedor">
	            <label>ID Fornecedores</label>
	            <input class="texto1" placeholder="Código do Fornecedor" readonly>
	        </div>
	        <div class="name" >
	            <label>Nome</label>
	            <input class="texto2" type="text" name="nome">
	        </div>
	
	        <div class="cpf">
	            <label>CPF/CNPJ</label>
	            <input class="texto4"  type="text" name="cpf">
			</div>
	
	        <div class="email">
	            <label>E-mail</label>
	            <input class="texto14"  type="email" name="email">
	        </div>
	        <div class="tel">
	            <label>Telefone</label>
	            <input class="texto15" type="text" name="tel" placeholder="( )____ ____">
	        </div>
	
	    </div></table></form>
	    <script src="../Scripts/validador.js"></script>
</body>
</html>