interface Forma {
	public double getArea();
	public double getDiametro();
}

class Quadrado implements Forma {
	private int altura;
	private int largura;

	Quadrado(int _altura, int _largura) {
		altura = _altura;
		largura = _largura;
	}

	public void setAltura(int _altura) {
		altura = _altura;
	}

	public int getAltura() {
		return altura;
	}

	public void setLargura(int _largura) {
		largura = _largura;
	}

	public int getLargura() {
		return largura;
	}

	public double getArea() {
		return largura * altura;
	}

	public double getDiametro() {
		return largura + largura + altura + altura;
	}

	public String toString() {
		return "Altura: " + getAltura() + "\n"
		     + "Largura: " + getLargura() + "\n"
		     + "Area: " + getArea() + "\n"
		     + "Diametro: " + getDiametro() + "\n";
	}
}

public class Main {
	public static void main(String[] args) {
		Quadrado quadrado = new Quadrado(3, 4);
		System.out.print(quadrado.toString());
	}
}