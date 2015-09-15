#include <iostream>
#include <cstdlib>
#include "../include/menormaior.hpp"
#include "../include/principal.hpp"

MenorMaior::MenorMaior()
{
	srand(time(NULL));
	this->numAleatorio = rand() % 51 + 1; // 1 até 50;
}

int MenorMaior::getNumAleatorio()
{
	return this->numAleatorio;
}

void MenorMaior::setNumAleatorio(int _numAleatorio)
{
	this->numAleatorio = _numAleatorio;
}

Placar MenorMaior::getP()
{
	return this->p;
}

void MenorMaior::setP(Placar _p)
{
	this->p = _p;
}

std::string MenorMaior::getNome()
{
	return this->nome;
}

void MenorMaior::setNome(std::string _nome)
{
	this->nome = _nome;
}

int MenorMaior::defineDificuldade()
{
	int escolha;

	std::cout << "Escolha a dificuldade: " << std::endl
			  << "\t[1] Fácil" << std::endl
			  << "\t[2] Intermediário" << std::endl
			  << "\t[3] Difícil" << std::endl
			  << "> ";

	std::cin >> escolha;
	return escolha;
}

int MenorMaior::defineTentativas(int dificuldade)
{
	if (dificuldade == 1)
		return 10;
	if (dificuldade == 2)
		return 6;
	if (dificuldade == 3)
		return 3;

	std::cout << "Opção inválida!!!" << std::endl << std::endl;
	defineTentativas(defineDificuldade());
}

bool MenorMaior::verificaNum(int nDigitado, int nAleatorio)
{
	if (nDigitado == nAleatorio)
		return true;

	if (nDigitado > nAleatorio) 
		std::cout << nDigitado << " é maior que o número que você procura!" << std::endl;
	else
		std::cout << nDigitado << " é menor que o número que você procura!" << std::endl;

	return false;
}

void MenorMaior::resetar()
{
	srand(time(NULL));
	this->numAleatorio = rand() % 51 + 1; // 1 até 50;
}

Placar MenorMaior::jogar()
{
	bool flag = false;
	bool flag2 = false;
	std::string nome;
	int tentativas, cont = 0;

	std::cout << "Digite seu nome: " << std::endl << "> ";
	std::cin >> nome;

	tentativas = defineTentativas(defineDificuldade());

	do {
		int numUsuario;
		Principal p;

		flag2 = false;

		std::cout << "[1~50] Adivinhar número" << std::endl
				  << "\t[51] Dica" << std::endl
				  << "\t[52] Voltar ao menu principal" << std::endl
				  << "\t[53] Resetar" << std::endl
				  << "\t[0]  Sair" << std::endl
				  << "> ";

		std::cin >> numUsuario;

		if (numUsuario == 51) {
			informarDica();
			flag2 = true;
		} else if (numUsuario == 52) {
			p.menu();
		} else if (numUsuario == 53) {
			resetar();
		} else if (numUsuario == 0) {
			return Placar(nome, flag, cont);
		} else if (verificaNum(numUsuario, numAleatorio)) {
			flag = true;
		} else {
			std::cout << "Você errou! Tente novamente, você ainda tem " << (tentativas - (cont + 1))
					  << " tentativas" << std::endl;
			flag2 = false;
		}

		if (!flag2) {
			cont++;
		}
	} while (!flag && cont < tentativas);

	return Placar(nome, flag, cont);
}

void MenorMaior::informarDica()
{
	if (this->numAleatorio < 10) {
		std::cout << "O número que você procura é menor que 10" << std::endl;
	} else if (this->numAleatorio < 20) {
		std::cout << "O número que você procura está entre 9 e 20" << std::endl;
	} else if (this->numAleatorio < 30) {
		std::cout << "O número que você procura está entre 19 e 30" << std::endl;
	} else if (this->numAleatorio < 40) {
		std::cout << "O número que você procura está entre 29 e 40" << std::endl;
	} else {
		std::cout << "O número que você procura está entre 39 e 50" << std::endl;
	}
}

void MenorMaior::exibirAjuda()
{
	std::cout << "O objetivo do jogo consiste em você escolher um número aleatório entre 0 e 50." << std::endl
			  << "Ganha quando acertar o número escolhido pelo computador. O jogo é dividido em fácil(10 tentativas);" << std::endl
			  << "médio(5 tentativas); e difícil(3 tentativas). Você pode pedir dicas no decorrer do jogo. Boa partida!" << std::endl;
}