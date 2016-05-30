#ifndef __MENORMAIOR_H_INCLUDED__
#define __MENORMAIOR_H_INCLUDED__

#include "placar.hpp"
#include "jogointerface.hpp"

class MenorMaior : public JogoInterface
{
	private:
		int numAleatorio;
		Placar p;
		std::string nome;
	public:
		MenorMaior();

		int getNumAleatorio();
		void setNumAleatorio(int _numAleatorio);
		Placar getP();
		void setP(Placar _p);
		std::string getNome(); 
		void setNome(std::string _nome);
		int defineDificuldade();
		int defineTentativas(int _dificuldade);
		bool verificaNum(int nDigitado, int nAleatorio);

		void resetar();
		Placar jogar();
		void informarDica();
		void exibirAjuda();
};

#endif