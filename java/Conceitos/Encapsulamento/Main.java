class Caneta {
	private String cor;
	private double preco;

	public void setCor(String _cor) {
		cor = _cor;
	}

	public String getCor() {
		return cor;
	}

	public void setPreco(double _preco) {
		preco = _preco;
	}

	public double getPreco() {
		return preco;
	}
}

public class Main {
	public static void main(String[] args) {
		Caneta caneta = new Caneta();

		caneta.setCor("Azul");
		caneta.setPreco(1.99);

		System.out.println("Cor: " + caneta.getCor() + " - Preço: " + caneta.getPreco());
	}
}