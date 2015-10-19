interface Forma {
	public double getArea();
	public double getDiametro();
}

class Quadrado implements Forma {
	private int lado;

	Quadrado(int _lado) {
		setLado(_lado);
	}

	public void setLado(int _lado) {
		lado = _lado;
	}

	public int getLado() {
		return lado;
	}

	public double getArea() {
		return lado * lado;
	}

	public double getDiametro() {
		return lado * 4;
	}

	public String toString() {
		return "Lado: " + getLado() + "\n"
		     + "Area: " + getArea() + "\n"
		     + "Diametro: " + getDiametro() + "\n";
	}
}

public class Main {
	public static void main(String[] args) {
		Quadrado quadrado[] = new Quadrado[3];

		for (int i = 0; i < 3; i++) {
			quadrado[i] = new Quadrado((i+2) * 3);
		}

		for (int i = 0; i < 3; i++) {
			System.out.println(quadrado[i].toString());
		}
	}
}