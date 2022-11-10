package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	String create = "insert into tbproduto (nomeProd,codBar,qntd,preco,idforn) values (?,?,?,?,?)";
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
	pst.setInt(5, produto.getId());
	// Executar a query
	pst.executeUpdate();
	//encerrar a conexão com o banco de dados
	con.close();
}catch(Exception e) {
	System.out.println(e);
}
}



public ArrayList<ProdutoClass> listarProdutos(){
	//Criando objeto para acessar a classe livraria
	ArrayList<ProdutoClass> produtos = new ArrayList();
	String read = "select * from tbproduto order by idProd";
	try {
		Connection con = conectar();
		PreparedStatement pst = con.prepareStatement(read);
		ResultSet rs = pst.executeQuery();
		//o laço abaixo será executado enquanto houver produtos
		while (rs.next()) {
			//variáveis de apoio que recebe dados do banco
			int id = rs.getInt(1);
			String nome = rs.getString(2);
			String codB = rs.getString(3);
			int qntd = rs.getInt(4);
			float preco = rs.getFloat(5);


			//populando o ArrayList
			produtos.add(new ProdutoClass(id,nome,codB,qntd,preco));	
		}
		con.close();
		return produtos;
	} catch (Exception e) {
		System.out.println(e);
		return null;
	
}}

public ArrayList<FuncionarioClass> listarFuncionario(){
	//Criando objeto para acessar a classe livraria
	ArrayList<FuncionarioClass> funcionarios = new ArrayList();
	String read = "select * from tbfuncionario order by idfunc";
	try {
		Connection con = conectar();
		PreparedStatement pst = con.prepareStatement(read);
		ResultSet rs = pst.executeQuery();
		//o laço abaixo será executado enquanto houver produtos
		while (rs.next()) {
			//variáveis de apoio que recebe dados do banco
			int idfunc = rs.getInt(1);
			String nomeFunc = rs.getString(2);
			String cargoFunc = rs.getString(3);
			String senha = rs.getString(4);

			//populando o ArrayList
			funcionarios.add(new FuncionarioClass(idfunc,nomeFunc,cargoFunc,senha));	
		}
		con.close();
		return funcionarios;
	} catch (Exception e) {
		System.out.println(e);
		return null;
	
}}

public ArrayList<FornecedorClass> listarForn(){
	//Criando objeto para acessar a classe livraria
	ArrayList<FornecedorClass> fornecedor = new ArrayList();
	String read = "select * from tbfornecedor order by idForn";
	try {
		Connection con = conectar();
		PreparedStatement pst = con.prepareStatement(read);
		ResultSet rs = pst.executeQuery();
		//o laço abaixo será executado enquanto houver produtos
		while (rs.next()) {
			//variáveis de apoio que recebe dados do banco
			int id = rs.getInt(1);
			String nomeForn = rs.getString(2);
			String cpfForn = rs.getString(3);
			String telForn = rs.getString(4);
			String emailForn = rs.getString(5);


			fornecedor.add(new FornecedorClass(id,nomeForn,cpfForn,telForn,emailForn));	
		}
		con.close();
		return fornecedor;
	} catch (Exception e) {
		System.out.println(e);
		return null;
	
}}

}
