<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Classes.FornecedorClass" %>
<%	
	ArrayList<FornecedorClass> lista = (ArrayList<FornecedorClass>) request.getAttribute("tbfornecedor");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Css/fornecedor.css">
<title>Fornecedores</title>
</head>
<body>
    <table>
       <thead>
       	<tr>
            <th>Identificador</th>  
            <th>Nome</th>  
            <th>Estoque</th> 
            <th>Fornecedor </th> 
        </tr> </thead>
        <tbody>
        <%for (int i=0; i < lista.size(); i++) {%> 
        <tr>
            <td><%=lista.get(i).getId() %> </td>
            <td><%=lista.get(i).getNome() %> </td>
            <td><%=lista.get(i).getEmail() %> </td>
            <td><%=lista.get(i).getTelefone() %> </td>
        </tr>
        <%} %>
       </tbody>
       </table>
</body>
</body>
</html>