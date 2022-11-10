package Classes;

public class ProdutoClass extends FornecedorClass{
	int idProd;
	String nomeP;
	String codBar;
	int quantidade;
	Float preco;
	
	
	
	public ProdutoClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProdutoClass(int idProd, String nomeP, String codBar, int quantidade, Float preco) {
		super();
		this.idProd = idProd;
		this.nomeP = nomeP;
		this.codBar = codBar;
		this.quantidade = quantidade;
		this.preco = preco;
	}
	public int getIdProd() {
		return idProd;
	}
	public void setIdProd(int idProd) {
		this.idProd = idProd;
	}
	public String getNomeP() {
		return nomeP;
	}
	public void setNomeP(String nomeP) {
		this.nomeP = nomeP;
	}
	public String getCodBar() {
		return codBar;
	}
	public void setCodBar(String codBar) {
		this.codBar = codBar;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public Float getPreco() {
		return preco;
	}
	public void setPreco(Float preco) {
		this.preco = preco;
	}

}
