<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.ProdutoClass" %>
<%	
	ArrayList<ProdutoClass> lista = (ArrayList<ProdutoClass>) request.getAttribute("tbproduto");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Estoque</title>
<link rel="stylesheet" href="Css/estoque.css">
</head>
<body>
<div class="container">
    <h2 class="h2"span style='font-size:20pt;'>&#128230;</span> Estoque</h2>  
    <table>
       <thead>
       	<tr>
            <th>Código do Produto</th>  
            <th>Produto</th>  
            <th>Estoque</th> 
            <th>Fornecedor </th> 
        </tr> </thead>
        <tbody>
        <%for (int i=0; i < lista.size(); i++) {%> 
        <tr>
            <td><%=lista.get(i).getCodBar() %> </td>
            <td><%=lista.get(i).getNomeP() %> </td>
            <td><%=lista.get(i).getQuantidade() %> </td>
            <td><%=lista.get(i).getId() %> </td>
        </tr>
        <%} %>
       </tbody>
       </table> </div>
</body>
</html>