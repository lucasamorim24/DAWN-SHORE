estado = "parado";

//aqui eu mexo na velocidade de movimentação
vel = 2;
//velocidade horizontal
velh=0;
//velocidade vertical
velv=0;


//Variáveis de direções de controle que armazenam valores 
direita		= 0;
esquerda	= 0;
cima		= 0;
baixo		= 0;

//Aqui vem o método dos controles

controles = function()
{
	direita		= keyboard_check(vk_right); //vk = virtual key (chave/tecla)
	esquerda	= keyboard_check(vk_left);
	cima		= keyboard_check(vk_up);
	baixo		= keyboard_check(vk_down);
//Aqui eu vou dizer que a velocidade horizontal é igual direita - esquerda * a velocidade definida.
//Pense no plano cartesiano. Direita é positivo e esquerda é negativo.
//Se eu apertei para a direita, direita é =1 e esquerda é = 0 (porque eu não cliquei para esquerda, então zera o valor). Logo, 1(direita)- 0(esquerda) = 1*velocidade=2 = 2
//Se eu apertei para a  esquerda, direita é = 0 e esquerda é = -1 (porque eu não cliquei para direita, então zera o valor). Logo, 0(direita) - 1 (esquerda) = -1*velocidade=2 = -2
	velh = (direita - esquerda) * vel;
//mesma lógica para vertical
	velv = (baixo - cima) * vel;
}