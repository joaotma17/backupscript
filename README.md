O meu nome é João Araújo e este respositório contém uma script em linux bash capaz de dar schedule a backups periodicos, com escolha entre fazer diariamente, semanalmente ou mensalmente.

O código irá funcionar para qualquer máquina windows, em que as unicas linhas de dição precisas são as linhas 4 e 5 para mudar a pasta de backup e destino.

De momento não têm compatibilidade com sistemas linux pois o git bash não suporta certos comandos como o crontab, o que impossibilita a opção de ter compatibilidade para outros sistemas operativos.

A script tem algumas mudanças QOL para facilidade do utilizador, como remover as barras antes do nome dos discos, e o dia e hora do backup será sempre guardada no nome do ficheiro

As instruções serão em inglês pelo simples proposito de facilidade no uso da script.


HOW TO SETUP THE SCRIPT:

1. Change the Directory of the Source Folder and Destination, meaning the folder where the backup is going to be stored.

When changing the directory, pay very close attention to the syntax, as the text needs to be between "" and you must follow the same logic when choosing disks

Ex.

/c/Users/joaot/Desktop/Scripting

Notice how you must put a / between the disk name, and in case your disk name is something like C: or D:, always put it like the example (/c/ or /d/)


2. Change the frequency of the backups

For simple Users:


schtasks //create //tn "BackupScript" //tr "/c/Users/joaot/Desktop/Scripting" //sc DAILY //st 19:20

This is just an example, but this is very close to the source code. If you're a simple user and you just want some simple and quick backups, all you need to change is:

After the //tn parameter, you must write the taskname you wish for the scheduled task.

After the //tr parameter, specify the directory of the script, follow the same logic as the first step

After the //sc and //st parameter, change the time of choice and if you want daily, weekly, monthly or yearly executions.


If you know what you're doing, feel free to search for more parameters of the schtasks command, as you can specify it a lot more than this!


Obrigado pelo uso da script e passem em alverca city.
