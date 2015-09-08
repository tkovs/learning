#include <iostream>
#include <cstdlib>

using namespace std;

class Placar
{
	private:
		string jogador;
		bool status;
	public:
		Placar(string _jogador, bool _status);
		bool getStatus() const { return status; }
};

class JogoInterface
{
	public:
		virtual void resetar();
		virtual Placar jogar();
		virtual void informarDica();
		virtual void exibirAjuda();
};

Placar::Placar(string _jogador, bool _status) {
	jogador = _jogador;
	status = _status;
}

class MenorMaior : public JogoInterface
{
	private:
		int chave; /* Número sorteado */
		int nivel; /* 1~3 */
		int entrada; /* Entrada atual do usuário */
		int tentativas; /* Quantidade de tentativas */
		string jogador; /* Nome do fdp */
	public:
		MenorMaior(int _nivel, string _jogador);
		void resetar();
		Placar jogar();
		void informarDica();
		void exibirAjuda();
};

MenorMaior::MenorMaior(int _nivel, string _jogador)
{
	nivel = _nivel;
	jogador = _jogador;
	resetar();
}

void MenorMaior::resetar()
{
	chave = rand() % 50;	
	tentativas = 0;
}

void MenorMaior::informarDica()
{
	if (entrada > chave)
		cout << "Tente um valor menor que " << entrada << "." << endl;
	else
		cout << "Tente um valor maior que " << entrada << "." << endl;
}

void MenorMaior::exibirAjuda()
{
	cout << "O objetivo do jogo é blablabla..." << endl;
}

Placar MenorMaior::jogar()
{
	cout << "Insira um valor: ";
	cin >> tentativas;

	if (tentativas == entrada) {
		return Placar(jogador, true);
	}
	else
		informarDica();
}

int main(void)
{
	MenorMaior game(1, "ze paulao");
	Placar resultado = game.jogar();

	if (resultado.getStatus() == true)
		cout << "Ganhou!!!" << endl;

	return 0;
}