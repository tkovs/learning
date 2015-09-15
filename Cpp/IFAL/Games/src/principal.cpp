#include "../include/principal.hpp"
#include "../include/menormaior.hpp"
#include <cstdlib>

void Principal::menu()
{
	MenorMaior *m = new MenorMaior();
	Placar p;
	int op;

	do {
		std::cout << "Digite a opçao desejada:" << std::endl
				  << "\t[1] Jogar" << std::endl
				  << "\t[2] Informações sobre o jogo" << std::endl
				  << "\t[0] Sair" << std::endl
				  << "> ";

		std::cin >> op;
		if (op == 0) {
			exit(0);
		} else if (op == 1) {
			p = m->jogar();
			if (p.isGanhou()) {
				std::cout << "Você venceu!";
			} else {
				std::cout << p.getGanhador() << " você perdeu, tentou " << p.getnTentativas() << " vezes. "<< std::endl;
			}
		} else if (op == 2) {
			m->exibirAjuda();
		} else {
			std::cout << "Opção inválida!" << std::endl;
		}
	} while (op != 0);
}