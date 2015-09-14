/*
9CM - Sistema para reservar lugares de ônibus (Aplicar Polimorfismo e Composição)
*/

import java.util.ArrayList;
import java.util.Scanner;

abstract class Veiculo
{
	protected int rodas;
	protected int assentos;
	protected String placa;

	public int MOTO = 1;
	public int CARRO = 2;
	public int ONIBUS = 3;

	public void setRodas(int rodas)
		{ this.rodas = rodas; }
	public int getRodas()
		{ return this.rodas; }
	public void setAssentos(int assentos)
		{ this.assentos = assentos; }
	public int getAssentos()
		{ return this.assentos; }
	public void setPlaca(String _placa)
		{ this.placa = _placa; }
	public String getPlaca()
		{ return this.placa; }
}

class Onibus extends Veiculo
{
	private String empresa;

	Onibus(String _empresa, int _rodas, int _assentos)
		{ this.empresa = _empresa;
		  this.rodas = _rodas; 
		  this.assentos = _assentos; }

	public void setEmpresa(String empresa)
		{ this.empresa = empresa; }
	public String getEmpresa()
		{ return this.empresa; }
}

class Garagem
{
	private boolean disponivel;
	private Vaga[] vagas;
	Veiculo veiculo;

	Garagem(int vagas)
		{ this.disponivel = true;
		  this.vagas = new Vaga[vagas]; 
		  for (Vaga vaga : this.vagas)
		    { vaga = new Vaga(veiculo.ONIBUS); } }

	public void setDisponivel(boolean _disponivel)
		{ this.disponivel = _disponivel; }
	public boolean getDisponivel()
		{ return this.disponivel; }

	public void liberarGeral()
		{ for (Vaga vaga : vagas)
			{ vaga.desocupar(); } }
}

class Vaga
{
	private boolean disponivel;
	private int tipo;
	String placa;

	Vaga(int _tipo)
		{ this.disponivel = true;
		  this.tipo = _tipo; }

	public void setDisponivel(boolean _disponivel)
		{ this.disponivel = _disponivel; }
	public boolean getDisponivel()
		{ return this.disponivel; }

	public void setTipo(int _tipo)
		{ this.tipo = _tipo; }
	public int getTipo()
		{ return this.tipo; }

	public void ocupar(String _placa)
		{ this.placa = _placa;
		  this.disponivel = false; }

	public void desocupar()
		{ this.placa = null;
		  this.disponivel = true; }
}

class Sistema
{
	Scanner leitor = new Scanner(System.in);

	Garagem garagem;

	Sistema(int _vagas)
		{ garagem = new Garagem(_vagas); 
		  liberarGeral(); }

	public int menu()
	{
		int opcao;

		System.out.print("== Reserva de lugares ==\n" +
						 "  [01] Verificar vagas\n" +
						 "  [02] Ocupar vaga\n" +
						 "  [03] Liberar vaga\n" +
						 "  [04] Fechar garagem (status)\n" +
						 "  [05] Abrir garagem (status)\n" +
						 "  [06] Liberar geral\n" +
						 "  [00] Sair\n\n" +
						 "-> ");

		opcao = leitor.nextInt();
		return opcao;
	}

	private void liberarGeral()
	{
		garagem.liberarGeral();
	}

	public void ativar()
	{
		int escolha;

		do {
			escolha = menu();
		} while (escolha != 0);
	}
}

public class Reserva
{
	public static void main(String[] args)
	{
		Sistema sistema = new Sistema(30 /*Vagas*/);

		sistema.ativar();
	}
}