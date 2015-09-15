#ifndef __INTERFACE_H_INCLUDED__
#define __INTERFACE_H_INCLUDED__

class JogoInterface
{
	public:
		virtual void resetar() = 0;
		virtual Placar jogar() = 0;
		virtual void informarDica() = 0;
		virtual void exibirAjuda() = 0;
};

#endif