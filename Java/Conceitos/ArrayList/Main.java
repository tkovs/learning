import java.util.ArrayList;

public class Main {
	public static void main(String[] args) {
		ArrayList<String> lista = new ArrayList();
		int size;

		lista.add("João Vitor");
		lista.add("Eren Yeager");
		lista.add("Dilma dos paranaue");
	
		size = lista.size();

		for (int i = 0; i < size; i++) {
			System.out.println(lista.get(i));
		}
	}
}