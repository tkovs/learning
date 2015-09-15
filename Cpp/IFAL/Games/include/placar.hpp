#ifndef __PLACAR_H_INCLUDED__
#define __PLACAR_H_INCLUDED__

#include <iostream>

class Placar
{
	private:
		bool ganhou;
		std::string ganhador;
		int nTentativas;
	public:
		Placar(std::string _ganhador, bool _ganhou, int _nTentativas);
		Placar();

		void setGanhou(bool _ganhou);
		bool isGanhou();

		void setGanhador(std::string _ganhador);
		std::string getGanhador();

		void setnTentativas(int _nTentativas);
		int getnTentativas();

		std::string toString();
};

#endif