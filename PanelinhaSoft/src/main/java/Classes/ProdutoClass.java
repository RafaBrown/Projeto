package Classes;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ProdutoClass extends FornecedorClass{
	int idProd;
	String nomeP;
	String codBar;
	Float quantidade;
	Float preco;
	Date data;
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
	public Float getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(Float quantidade) {
		this.quantidade = quantidade;
	}
	public Float getPreco() {
		return preco;
	}
	public void setPreco(Float preco) {
		this.preco = preco;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	
	public String formataData(String dataFormatada) {
		Date dataAtual = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		dataFormatada = dateFormat.format(dataAtual);
		return dataFormatada;
	}
	
}
