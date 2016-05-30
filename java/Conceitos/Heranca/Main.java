class Camisa {
	private String tamanho;
	private String cor;

	Camisa(String _tamanho, String _cor) {
		setTamanho(_tamanho);
		setCor(_cor);
	}

	public void setTamanho(String _tamanho) {
		tamanho = _tamanho;
	}

	public String getTamanho() {
		return tamanho;
	}

	public void setCor(String _cor) {
		cor = _cor;
	}

	public String getCor() {
		return cor;
	}

	public String toString() {
		return "Tamanho: " + getTamanho() + "\n"
		     + "Cor: " + getCor() + "\n";
	}
}

class CamisaFutebol extends Camisa {
	private int numero;
	private String time;

	CamisaFutebol(String _tamanho, String _cor, int _numero, String _time) {
		super(_tamanho, _cor);

		setNumero(_numero);
		setTime(_time);
	}

	public void setNumero(int _numero) {
		numero = _numero;
	}

	public int getNumero() {
		return numero;
	}

	public void setTime(String _time) {
		time = _time;
	}

	public String getTime() {
		return time;
	}

	public String toString() {
		return "Tamanho: " + getTamanho() + "\n"
		     + "Cor: " + getCor() + "\n"
		     + "Numero: " + getNumero() + "\n"
		     + "Time: " + getTime() + "\n";
	}
}

public class Main {
	public static void main(String[] args) {
		CamisaFutebol camisa = new CamisaFutebol("p", "azul", 66, "Chelsea");

		System.out.print(camisa.toString());
	}
}