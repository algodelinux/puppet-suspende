puppet-suspende
===============

Módulo puppet para suspender un equipo si tras un tiempo determinado (por defecto 15 min.) se comprueba
que no hay ningún usuario logueado en el entorno gráfico.

Este módulo gestiona una tarea cron que lanza un script /usr/local/sbin/suspende.sh periódicamente para
detectar si hay un usuario logueado. Si no lo hay, suspenderá el equipo para ahorrar energía y evitar 
que se caliente. Además, comprueba si es un servidor LTSP, y si lo es, antes de suspender, apaga los
terminales encendidos.

La reanudación del equipo puede realizarse pulsando una tecla del teclado, si tenéis conectado el teclado
vía PS2. La reanudación mediante teclado USB no funciona, supongo que habría que configurarlo de algún
modo.

Para realizar el apagado de los terminales, utiliza el script /usr/sbin/apagaterminales.sh instalado por 
el módulo puppet puppet-apagado-terminales. Por tanto, para que el módulo puppet-suspende os funcione 
completamente en un servidor LTSP, debéis instalar también el módulo puppet-apagado-terminales.

Creado por:

Esteban M. Navas Martín  
Administrador informático  
IES Valle del Jerte  
Plasencia  
26-Mayo-2014  
