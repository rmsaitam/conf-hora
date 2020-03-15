#!/bin/bash
#	Este software foi criado por Fabio A A Carneiro, com o propósito de ajudar
#	e facilitar a vida do usuário de sistemas Linux e fortalecer a comunidade.
#
#	contatos :
#	e-mail : fabioaacarneiro@gmail.com
#		 fabioaffonso@rocketmail.com
#
#	telegram : @bynmboy
#
#	youtube : https://www.youtube.com/channel/UCBC_nGXUzGRIfrD3-Qx7EXg?view_as=subscriber
#
#	será necessário ter no sistema dialog
#
#
#
#
#
#
_hora=$(dialog --stdout --title " hora-carneiro 0.1" --cancel-label " Cancelar " --ok-label " Alterar " --timebox "Insira a hora para configurar seu Relógio " 0 0)

if [ $? = "0" ]; then
	clear ; sudo date -s $_hora ; clock -w
else
	dialog --title " hora-carneiro 0.1" --msgbox "Ok, finalizando" 0 0
	sleep 2
	clear
	exit 0
fi

dialog --title " hora-carneiro 0.1" --msgbox " Horário alterado com sucesso!\
 Em instantes seu Relógio será atualizado. " 0 0

clear
exit 0 
