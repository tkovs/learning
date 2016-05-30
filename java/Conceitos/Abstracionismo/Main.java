abstract class ContaBancaria {
	private String cliente;
	private int numConta;
	private double saldo;

	public ContaBancaria(String _cliente, int _numConta, double _saldo) {
		cliente = _cliente;
		numConta = _numConta;
		saldo = _saldo;
	}

	public void setCliente(String _cliente) {
		cliente = _cliente;
	}

	public String getCliente() {
		return cliente;
	}

	public void setNumConta(int _numConta) {
		numConta = _numConta;
	}

	public int getNumConta() {
		return numConta;
	}

	public void setSaldo(double _saldo) {
		saldo = _saldo;
	}

	public double getSaldo() {
		return saldo;
	}

	public abstract void Depositar(double valor);
	public abstract double Saque(double valor);

	public boolean equals(Object o) {
		if (o != this)
			return false;

		if (o == null)
			return false;

		if (o.getClass() != this.getClass())
			return false;

		ContaBancaria conta = (ContaBancaria) o;
		if (conta.getNumConta() != this.getNumConta())
			return false;

		return true;
	}
}

class ContaPoupanca extends ContaBancaria {
	private double taxa;

	public ContaBancaria(String _cliente, int _numConta, double _saldo, double taxa) {
		super(_cliente, _numConta, _saldo);
		setTaxa(_taxa);
	}

	public void setTaxa(double _taxa) {
		taxa = _taxa;
	}

	public double getTaxa() {
		return taxa;
	}


}

public class Main {
	public static void main(String[] args) {

	}
}