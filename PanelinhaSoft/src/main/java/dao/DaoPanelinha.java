package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import Classes.FuncionarioClass;
import Classes.ProdutoClass;
import Classes.FornecedorClass;

public class DaoPanelinha {
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = 
	"jdbc:mysql://localhost:3306/bdpanelinha?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "142536Ra.";
	
	
private Connection conectar(){
	Connection con = null;
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, password);
		return con;
	}catch (Exception e) {
		System.out.println(e);
		return null;
	}
}
public void testeConexao() {
	try {
		Connection con = conectar();
		System.out.println(con);
		con.close();
	} catch (Exception e) {
		System.out.println(e);
	}
}

// Crud Create
public void insertFunc(FuncionarioClass funcionario) {
	String create = "insert into tbfuncionario (idFunc,nomeFunc,cargoFunc,senhaFunc) values (?,?,?,?)";
try{
	// abrir a conexão
	Connection con = conectar();
	// Preparar a query para executar no banco de dados
	PreparedStatement pst = con.prepareStatement(create);
	// Substituir os parâmetros (?) pelo conteudo das variaveis
	pst.setInt(1, funcionario.getId());
	pst.setString(2, funcionario.getNome());
	pst.setString(3, funcionario.getCargo());
	pst.setString(4, funcionario.getSenha());
	// Executar a query
	pst.executeUpdate();
	//encerrar a conexão com o banco de dados
	con.close();
}catch(Exception e) {
	System.out.println(e);
}
}

public void insertFornecedor(FornecedorClass fornecedor) {
	String create = "insert into tbfornecedor (nomeForn,cpfForn,telForn,emailForn) values (?,?,?,?)";
try{
	// abrir a conexão
	Connection con = conectar();
	// Preparar a query para executar no banco de dados
	PreparedStatement pst = con.prepareStatement(create);
	// Substituir os parâmetros (?) pelo conteudo das variaveis
	pst.setString(1, fornecedor.getNome());
	pst.setString(2, fornecedor.getCpf());
	pst.setString(3, fornecedor.getTelefone());
	pst.setString(4, fornecedor.getEmail());
	// Executar a query
	pst.executeUpdate();
	//encerrar a conexão com o banco de dados
	con.close();
}catch(Exception e) {
	System.out.println(e);
}
}

public void insertProduto(ProdutoClass produto) {
	String create = "insert into tbproduto (nomeProd,codBar,qntd,preco) values (?,?,?,?)";
try{
	// abrir a conexão
	Connection con = conectar();
	// Preparar a query para executar no banco de dados
	PreparedStatement pst = con.prepareStatement(create);
	// Substituir os parâmetros (?) pelo conteudo das variaveis
	pst.setString(1, produto.getNomeP());
	pst.setString(2, produto.getCodBar());
	pst.setFloat(3, produto.getQuantidade());
	pst.setFloat(4, produto.getPreco());
	// Executar a query
	pst.executeUpdate();
	//encerrar a conexão com o banco de dados
	con.close();
}catch(Exception e) {
	System.out.println(e);
}
}















}
