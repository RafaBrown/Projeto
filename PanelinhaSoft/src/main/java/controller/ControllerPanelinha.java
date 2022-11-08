package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Classes.FornecedorClass;
import Classes.FuncionarioClass;
import Classes.ProdutoClass;
import dao.DaoPanelinha;

@WebServlet(urlPatterns = {"/ControllerPanelinha" , "/insertFunc","/insertForn","/insertProd"})
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
		response.sendRedirect("CadastroFuncionarios/funcionarios.jsp");
		
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
		response.sendRedirect("CadastroFornecedores/cadastroFornecedores.jsp");
		
	}
	
	protected void addProduto(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		produto.setNomeP(request.getParameter("nome"));
		produto.setCodBar(request.getParameter("codbar"));
		produto.setPreco(Float.parseFloat(request.getParameter("preco")));
		produto.setQuantidade(Float.parseFloat(request.getParameter("qntd")));
		produto.setId(Integer.parseInt(request.getParameter("codFornecedor")));
		/*produto.setData(Date.parse(request.getParameter("validade")));*/
		System.out.println(produto.getNomeP());
		System.out.println(produto.getCodBar());
		System.out.println(produto.getPreco());
		System.out.println(produto.getQuantidade());
		System.out.println(produto.getId());
		System.out.println(produto.getData());
		dao.insertFornecedor(fornecedor);
		response.sendRedirect("CadastroProdutos/cadastroProduto.jsp");
		
	}
	
	
	
	
	
	
	
	/* protected void livrariaCategoria(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		
	}*/

}
