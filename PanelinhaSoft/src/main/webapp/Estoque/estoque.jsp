<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estoque.css">
    <title>Estoque</title>
</head>
<body>
    <h2 class="h2"span style='font-size:20pt;'>&#128230;</span> Estoque</h2>  
    <span class="emote">&#128230;</span> 
    <span class="emote2">&#128230;</span> 
    <label class="resul">Resultados</label>
    <input class="num" type="number" name="Resultados" min="0" max="40">   
    <label class="buscaI">Data Inicial</label>
    <input  class="dataI" type="date"> 
    <label class="buscaF">Data Final</label>
    <input  class="dataF" type="date"> 

    <hr class="hr2"/>
    <button class="enviar"span style='font-size:19px;'>&#10133;</span> Enviar Nota de Entrada</button>
    <button class="buscar" span style='font-size:19px;'>&#128269;</span> Buscar Produto</button>      
    <hr class="hr"/>
    <table>
        <tr>
            <th>Código do Produto</th>  
            <th>Produto</th>  
            <th>Estoque Atual</th> 
            <th>Última Alteração</th> 
            <th>Fornecedor </th> 
        </tr>
        <tr>
            <td>010092922</td>
            <td>Carne de Hambúrguer</td>
            <td> 150x Unid</td>
            <td>01/07/2010</td>
            <td>Texas</td>
        </tr>
        <tr>
            <td>020084930</td>
            <td>Pão de Hambúrguer</td>
            <td>300x Unid</td>
            <td>28/10/2022</td>
            <td>Dail Distribuidora</td>
        </tr>
        <tr>
            <td>030092191</td>
            <td>Queijo</td>
            <td>300x Unid</td>
            <td>10/11/2022</td>
            <td>Sadia</td>
        </tr>
        <tr>
            <td>030092192</td>
            <td>Queijo Cheddar</td>
            <td>300x Unid</td>
            <td>10/11/2022</td>
            <td>Sadia</td>
        </tr>
        <tr>
            <td>022229186</td>
            <td>Sanduíche Natural</td>
            <td>...</td>
            <td>01/11/2022</td>
            <td>Naural</td>
        </tr>
        <tr>
            <td>0300568976</td>
            <td>Coca Cola 400ml</td>
            <td>6x50 Unid</td>
            <td>20/10/2022</td>
            <td>Coca Cola Femsa</td>
        </tr>
        <tr>
            <td>0300569099</td>
            <td>Fanta 400ml</td>
            <td>6x50 Unid</td>
            <td>21/11/2022</td>
            <td>Coca Cola Femsa</td>
        </tr>
        <tr>
            <td>00987625198</td>
            <td>Suco Del Valle</td>
            <td>5x50 Unid</td>
            <td>20/11/2022</td>
            <td>Coca Cola Femsa</td>
        </tr>
    </table>
</body>
</html>   