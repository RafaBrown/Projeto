package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Classes.FornecedorClass;
import Classes.FuncionarioClass;
import Classes.ProdutoClass;
import Dao.DaoPanelinha;


@WebServlet(urlPatterns = {"/ControllerPanelinha" , "/insertFunc","/insertForn","/insertProd","/validation",
		"/listar","/Rvenda","/listarForn"})
public class ControllerPanelinha extends HttpServlet {
	private static final long serialVersionUID = 1L;
    DaoPanelinha dao = new DaoPanelinha();
    FuncionarioClass funcionario = new FuncionarioClass();
    FornecedorClass fornecedor = new FornecedorClass();
    ProdutoClass produto = new ProdutoClass();

    public ControllerPanelinha() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String action = request.getServletPath();
		if (action.equals("/insertFunc")) {
			addFuncionario(request, response);
		} else if (action.equals("/insertForn")) {
			addFornecedor(request,response);
		} else if (action.equals("/insertProd")) {
			addProduto(request,response);
		} else if (action.equals("/validation")) {
			validacao(request,response);
		} else if (action.equals("/listar")) {
			listarProduto(request,response);
		} else if (action.equals("/Rvenda")) {
			listarPV(request,response);
		} else if (action.equals("/listarForn")) {
			listarForn(request,response);
		}
		
	}
	
	protected void addFuncionario(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		funcionario.setId(Integer.parseInt(request.getParameter("id")));
		funcionario.setNome(request.getParameter("nome"));
		funcionario.setCargo(request.getParameter("cargo"));
		funcionario.setSenha(request.getParameter("senha"));
		System.out.println(funcionario.getId());
		System.out.println(funcionario.getNome());
		System.out.println(funcionario.getCargo());
		System.out.println(funcionario.getSenha());
		dao.insertFunc(funcionario);
		response.sendRedirect("cadastroFuncionario.html");
		
	}
	
	protected void addFornecedor(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		fornecedor.setNome(request.getParameter("nome"));
		fornecedor.setCpf(request.getParameter("cpf"));
		fornecedor.setTelefone(request.getParameter("tel"));
		fornecedor.setEmail(request.getParameter("email"));
		System.out.println(fornecedor.getNome());
		System.out.println(fornecedor.getCpf());
		System.out.println(fornecedor.getTelefone());
		System.out.println(fornecedor.getEmail());
		dao.insertFornecedor(fornecedor);
		response.sendRedirect("cadastroFornecedores.html");
		
	}
	
	protected void addProduto(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		produto.setNomeP(request.getParameter("nome"));
		produto.setCodBar(request.getParameter("codbar"));
		produto.setPreco(Float.parseFloat(request.getParameter("preco")));
		produto.setQuantidade(Integer.parseInt(request.getParameter("qntd")));
		produto.setId(Integer.parseInt(request.getParameter("codFornecedor")));
		System.out.println(produto.getNomeP());
		System.out.println(produto.getCodBar());
		System.out.println(produto.getPreco());
		System.out.println(produto.getQuantidade());
		System.out.println(produto.getId());
		dao.insertProduto(produto);
		response.sendRedirect("cadastroProduto.html");
		
	}
	
	
	
	
	
	
	
	protected void listarProduto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ProdutoClass> lista = dao.listarProdutos();
		
		request.setAttribute("tbproduto", lista);
		RequestDispatcher rd = request.getRequestDispatcher("estoque.jsp");
		rd.forward(request, response);
		//response.sendRedirect("listaLivrosPorCategoria.html");
	}
	
	protected void listarPV(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ProdutoClass> lista = dao.listarProdutos();
		
		request.setAttribute("tbproduto", lista);
		RequestDispatcher rd = request.getRequestDispatcher("realizarVendas.jsp");
		rd.forward(request, response);
		//response.sendRedirect("listaLivrosPorCategoria.html");
	}
	
	
	protected void listarForn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FornecedorClass> lista = dao.listarForn();
		
		request.setAttribute("tbfornecedor", lista);
		RequestDispatcher rd = request.getRequestDispatcher("listaFornecedor.jsp");
		rd.forward(request, response);
		//response.sendRedirect("listaLivrosPorCategoria.html");
	}
	
	protected void validacao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FuncionarioClass> lista = dao.listarFuncionario();
		request.setAttribute("tbfuncionario", lista);
		funcionario.setId(Integer.parseInt(request.getParameter("loguin")));
		funcionario.setSenha(request.getParameter("senha"));
		System.out.println(funcionario.getId());
		System.out.println(funcionario.getSenha());
		int user = funcionario.getId();
		String senha = funcionario.getSenha();
		int user2;
		String senha2;
		for (int i=0; i < lista.size(); i++) {
			user2= lista.get(i).getId();
			senha2= lista.get(i).getSenha();
			if(user2 == user && senha2 == senha) {
				System.out.println("correto");
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("loguin.jsp");
				rd.forward(request, response);
			}
		}

		//response.sendRedirect("listaLivrosPorCategoria.html");
	}
	
}
