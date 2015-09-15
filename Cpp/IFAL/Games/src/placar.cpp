#include <iostream>
#include "../include/placar.hpp"

Placar::Placar(std::string _ganhador, bool _ganhou, int _nTentativas)
{
	this->ganhador = _ganhador;
	this->ganhou = _ganhou;
	this->nTentativas = _nTentativas;
}

Placar::Placar()
{
	this->ganhador.clear();
	this->ganhou = false;
}

void Placar::setGanhou(bool _ganhou)
{
	this->ganhou = _ganhou;
}

bool Placar::isGanhou()
{
	return this->ganhou;
}

void Placar::setGanhador(std::string _ganhador)
{
	this->ganhador = _ganhador;
}

std::string Placar::getGanhador()
{
	return this->ganhador;
}

void Placar::setnTentativas(int _nTentativas)
{
	this->nTentativas = _nTentativas;
}

int Placar::getnTentativas()
{
	return this->nTentativas;
}