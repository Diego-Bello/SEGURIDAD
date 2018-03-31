#!/bin/bash
#Buscar informacion valiosa en el codigo de pag web
#Diego Antonio BS
#E.E SEGURIDAD
#28/03/18
	echo -e "\e[1;33m			BIENVENIDO			\e[0m"
	echo -e "\e[1;34m¿Donde guardara el index de la pag?, favor de teclear la direccion:\e[0m"
	#echo "¿Donde guardara el index de la pag?, favor de teclear la direccion:"
	read direccion
	cd $direccion
	echo " "
	echo -e "\e[1;34mPor favor introduce la direccion url de la pagina web \e[0m"
	#echo "Por favor introduce la direccion url de la pagina web:"
	read paginaweb
	wget $paginaweb
	echo  -e "\e[0;31mPAGINA DESCARGADA! \e[0m" 
	sleep 1
	echo -e "\e[1;34mEstos son los archivos en $direccion: \e[0m"
	cd $direccion
	echo " "
	echo "**********************************************************"
	ls
	echo "**********************************************************"
	echo " "
	echo -e "\e[1;34mFavor de tecleear el nombre completo del index:\e[0m"
	read nombre
	echo " "
	echo -e "\e[1;34m¿Que informacion desea buscar? \e[0m"
	read info
	echo -e "\e[0;31m*********************BUSCANDO*********************\e[0m"
	grep -i -n "$info" $nombre #-n numera las lineas donde esta el resultado 
	#case por si el usuario desea buscar más o salir del script
	echo " "
	echo -e "\e[1;34m¿Desea buscar algo mas en el index?, teclee el numero para una opcion:\e[0m"
	echo "1)Buscar "
	echo "2)Salir"	
	echo " "
	while :
	  do
	      read respuesta
  		case $respuesta in
     		1)
		#	
        		echo -e "\e[1;34m¿Cual es la informacion a encontrar?: \e[0m"
			read info2
		        echo -e "\e[0;31m*********************BUSCANDO*********************\e[0m"
        		echo " "
        		grep -i -n "$info2" $nombre #puede agregarse -w para buscar la palabra exacta
			echo " "
			echo -e "\e[1;34mSeleccione numero para opcion valida\e[0m"
			echo "1)Buscar "
        		echo "2)Salir"  
			echo " "
    		 ;;
		2)
        		echo -e "\e[0;32mHasta pronto\e[0m"; exit
			
     		;;
     		*)
		        echo -e "\e[0;31mOpcion no permitida, seleccione numero para opcion valida\e[0m"
			echo "1)Buscar"
		        echo "2)Salir"  
			echo " "
     		;;
  		esac
            done


 

