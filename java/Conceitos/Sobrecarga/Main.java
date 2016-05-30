public class Main {
	public static int quadrado(int x) {
		return x * x;
	}

	public static double quadrado(double x) {
		return x * x;
	}

	public static void main(String[] args) {
		int i = 2;
		double d = 3.14;

		System.out.printf("Int: %d\nDouble: %.2f", quadrado(i), quadrado(d));
	}
}