class Quadrado {
	int lado;

	Quadrado() {
		lado = 0;
	}

	Quadrado(int _lado) {
		setLado(_lado);
	}

	public void setLado(int _lado) {
		lado = _lado;
	}

	public int getLado() {
		return lado;
	}

	public int getArea() {
		return lado * lado;
	}

	public String toString() {
		return "Lado: " + getLado() + "\n"
			 + "Area: " + getArea() + "\n";
	}
}

public class Main {
	public static void main(String[] args) {
		Quadrado quadrado[] = new Quadrado[2];

		quadrado[0] = new Quadrado();
		quadrado[1] = new Quadrado(3);

		System.out.println(quadrado[0].toString());
		System.out.println(quadrado[1].toString());
	}
}