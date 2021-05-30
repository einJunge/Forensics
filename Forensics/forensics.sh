#!/bin/bash

trap 'printf "\n";stop;exit 1' 2
r="\e[1;91m"
v="\e[1;92m"
a="\e[1;93m"
b="\e[1;39m"
m="\e[1;96m"
z="\e[1;94m"



paquetes(){
        command -v foremost > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b foremost No instalado"; exit 1;}
        command -v bulk_extractor > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b bulk_extractor No instalado"; exit 1;}
        command -v guymager > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b guymager No instalado"; exit 1;}
        command -v dc3dd > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b dc3dd No instalado"; exit 1;}
        command -v autopsy > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b autopsy No instalado"; exit 1;}
        command -v memdump > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b memdump No instalado"; exit 1;}
        command -v toilet > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b toiletNo instalado"; exit 1;}
        command -v chkrootkit > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b chkrootkit No instalado"; exit 1;}
        command -v crash > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b crashNo instalado"; exit 1;}
        command -v scalpel > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b scalpel  No instalado"; exit 1;}
        command -v benchmark > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b benchmark No instalado"; exit 1;}
       

}

sleep 2s

 function toi(){
     toilet Verificador 
     echo
     echo
     sleep 3
     echo -e "$a[$b +$v ]$b foremost" 
     sleep 2          
     echo -e "$a[$b +$v ]$b bulk_extractor" 
     sleep 2  
     echo -e "$a[$b +$v ]$b guymager"
     sleep 2
     echo -e "$a[$b +$v ]$b dc3dd" 
     sleep 2  
     echo -e "$a[$b +$v ]$b Autopsy"
     sleep 2
     echo -e "$a[$b +$v ]$b scalpel" 
     sleep 2    
     echo -e "$a[$b +$v ]$b recoverjpeg" 
     sleep 2    
     echo -e "$a[$b +$v ]$b toilet" 
     sleep 2       
 }

clear
toi
sleep 4
clear
paquetes

function a2(){
    clear
 echo -e " $v         _____ ___  ____  _____ _   _ ____ ___ ____ $v ";
 echo -e " $v        |  ___/ _ \|  _ \| ____| \ | / ___|_ _/ ___|$v ";
 echo -e " $v        | |_ | | | | |_) |  _| |  \| \___ \| | |    $v ";
 echo -e " $v        |  _|| |_| |  _ <| |___| |\  |___) | | |___ $v ";
 echo -e " $v        |_|   \___/|_| \_\_____|_| \_|____/___\____|$v ";
 echo -e "$m
   Toolkit for Forensics
     ${a}coded by MaxWice"
        
}


sleep 2s
a2
echo
echo
echo -e  "$a*******************************************************$a"
echo -e "$a // Herramienta de Analisis Forensics Open Source$a     *  "
echo -e  "$a*******************************************************$b"



#Opciones del menu
a="Creación de img Forense:  "
b="Recuperacion de Archivos:"
c="Validacion de Hash:"
d="Analisis de Imagenes/Memoria:"
e="Salir del programa"


PS3="Selecciona una opcion: "

#Funcion para la creacion de imagen
function menu_principal(){

echo
select menu in "$a" "$b" "$c" "$d" "$e";
do
case $menu in
$a)
clear
sleep 3
echo -e "$v+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+$z"
toilet Create_Img
echo -e "$v+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+$v"
echo
metodos="IMG_Dc3dd IMG_Guymager IMG_DD Menu"

select opcion in $metodos;
do
sleep 3s
clear

            if [ $opcion = "IMG_Dc3dd" ]; then
                  echo
                  echo -e " $m[*]Creación de img Forense:$m"
                  sleep 2
                  clear
                  echo -e "[*]Listando todos los discos y dispositivos conectados (Enter):"
                  read discos
                  sleep 2s
                  sudo fdisk -l
                  sleep 3s
                  echo
                  sleep 10
                  clear
                  echo -e "[*]Escriba la unidad de su disco a elegir (/dev/sdb) "
                  read -p "Unidad :" uni
                  sleep 2
                  echo
                  echo -e "[*]Escriba el tipo de hash (md5/sha1)"
                  read -p "Hash: " has
                  sleep 2
                  echo
                  echo -e "[*]Escriba el tipo de parametro a guardar (dd/img) "
                  read -p "image: " imag 
                  sleep 2
                  echo
                  echo -e "[*]Escriba el nombre a guardar"
                  read -p "archivo: " arch
                  sleep 2
                  echo
                  clear
                  echo -e "[*]Este proceso podria tardar un tiempo"
                  echo
                  clear
                  echo -e "[*]Creando Imagen"
                  dc3dd if=$uni hash=$has log=dc3ddusb of=$arch.$imag
                  sleep 10
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$v"
                  sleep 10
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal


                elif [ $opcion = "IMG_Guymager" ]; then
                sleep 2s
                clear
                echo -e "$z+-+-+-+-+-+-+-+-+$z"
                echo -e "$v|G|u|y|m|a|g|e|r|$v"
                echo -e "$z+-+-+-+-+-+-+-+-+$z"
                echo
                echo 
                echo -e "[*]Ejecutando Guymager GUI"
                sleep 4
                clear
                gnome-terminal --tab -e "bash -c ' sudo  guymager  && sleep 300000'" 
                sleep 10
                clear 
                echo
                toilet Forensics
                echo
                menu_principal
                elif [ $opcion = "IMG_DD" ]; then
                  echo
                  echo -e " $m[*]Creación de img Forense:$m"
                  sleep 2
                  clear
                  echo -e "[*]Listando todos los discos y dispositivos conectados (Enter):"
                  read discos
                  sleep 2s
                  sudo fdisk -l
                  sleep 3s
                  echo
                  sleep 5
                  echo
                  echo
                  echo -e "[*]Escriba la unidad de su disco a elegir (/dev/sdb) "
                  read -p "Unidad :" un
                  sleep 2
                  clear
                  echo
                  echo -e "[*]Escriba el tipo de parametro a guardar (dd/iso) "
                  read -p "image: " imagg 
                  sleep 2
                  echo
                  echo -e "[*]Escriba el nombre a guardar"
                  read -p "archivo: " archh
                  sleep 2
                  echo
                  clear
                  echo -e "[*]Este proceso podria tardar un tiempo"
                  echo
                  clear
                  echo -e "[*]Creando Imagen en nueva ventana"
                  #dd if=$un of=$archh.$imagg bs=512 conv=noerror,sync
                  gnome-terminal --tab -e "bash -c ' sudo  dd if=$un of=$archh.$imagg bs=512 conv=noerror,sync  && sleep 30000'" 
                  sleep 10
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$v"
                  sleep 10
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal
                  elif [ $opcion = "Menu" ]; then
                  sleep 3s
                  clear
                  toilet Forensics
                  echo
                  menu_principal
                  
            fi 
            done

#Recuperacion y tallados de archivos
;;
$b)
sleep 3
clear
toilet Recovery
sleep 2
echo
metodos="Foremost Scalpel Bulk_extractor Recoverjpeg Menu"
echo
select opcion in $metodos;
do
sleep 3s
clear

            if [ $opcion = "Foremost" ]; then
                  echo
                  toilet Foremost
                  sleep 2
                  echo
                  echo -e "$v[+]Escriba el nombre o ruta de su imagen forense  (example.img)$v "
                  read -p "nombre: " fore
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Nombre a guardar\e[1;39m "
                  read -p "nombre:" foree 
                  sleep 2
                  echo
                  clear
                  echo -e "\e[1;39m[*]Esto puede tardar unos minutos\e[1;39m"
                  echo
                  sleep 3
                  foremost -i $fore -o foremostt/$foree
                  sleep 4
                  clear
                  echo -e "[TALLADO COMPLETO]Archivos guardados en foremostt/$foree /"
                  sleep 3s
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$v"
                  sleep 10
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal


                elif [ $opcion = "Scalpel" ]; then
                echo
                  toilet Scalpel
                  sleep 2
                  echo
                  echo -e "$v[+]Escriba el nombre o ruta de su imagen forense  (example.img)$v "
                  read -p "nombre: " sca
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Nombre a guardar\e[1;39m "
                  read -p "nombre:" scal
                  sleep 2
                  echo
                  clear
                  echo -e "\e[1;39m[*]Esto puede tardar unos minutos\e[1;39m"
                  echo
                  cd scalpel-output
                  scalpel -o $scal $sca
                  sleep 4
                  clear
                  echo
                  echo -e "[TALLADO COMPLETO]Archivos guardados en scalpel-output/$scal /"
                  sleep 4
                  cd ../
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$v"
                  sleep 10
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal
                elif [ $opcion = "Bulk_extractor" ]; then
                  echo
                  sleep 3
                  toilet Bulk_extrac
                  sleep 2
                  echo
                  echo -e " $m[*]Tallado de datos:$m"
                  sleep 2
                  clear
                  echo -e "$v[+]Escriba la ruta de su imagen forense  (/home/kali/example.img)$v "
                  read -p "nombre: " bul
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Nombre a guardar\e[1;39m "
                  read -p "nombre:" bulk
                  sleep 2
                  cd bulk-output
                  echo
                  clear
                  echo -e "\e[1;39m[*]Esto puede tardar unos minutos\e[1;39m"
                  echo
                  sleep 2
                  bulk_extractor -o $bulk $bul
                  echo
                  sleep 3
                  echo -e "[+]Tallado de imagen completo"
                  sleep 3
                  cd ../ 
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$v"
                  sleep 10
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal
                  elif [ $opcion = "Recoverjpeg" ]; then
                  echo
                  toilet Recoverjpeg 
                  sleep 2
                  echo
                  echo -e "$v[*]Escriba la unidad de su disco a elegir (/dev/sdb)$v "
                  read -p "nombre: " rec
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Nombre a guardar\e[1;39m "
                  read -p "nombre:" reco
                  sleep 2
                  echo
                  clear
                  echo -e "\e[1;39m[*]Esto puede tardar unos minutos\e[1;39m"
                  echo
                  sleep 3
                  cd recoverjpeg
                  mkdir $reco
                  cd $reco
                  recoverjpeg $rec
                  sleep 4
                  clear
                  echo -e "[TALLADO COMPLETO]Archivos guardados en recoverjpeg/$foree /"
                  sleep 3
                  cd ../../
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$v"
                  sleep 10
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal
                  elif [ $opcion = "Menu" ]; then
                  sleep 3s
                  clear
                  toilet Forensics
                  echo
                  menu_principal
                  
            fi 
            done

;;
#---------------------------------------------------------------------------------------

#Integrando un Hash a las unidades /dev/
$c)
clear
sleep 2
toilet VHast
sleep 2s
echo
vali="md5 Sha256 Menu"

select opcion in $vali;
do
            sleep 3s
            clear
            if [ $opcion = "md5" ]; then
            echo
            echo -e "[*]Listando unidades"
            sleep 3
            clear
            fdisk -l
            sleep 2
            echo
            echo
            echo -e "[*]Escriba la unidad de su disco a elegir (/dev/sdb) "
            read -p "Unidad :" m5
            echo
            sleep 3
            clear
            echo -e "$z [*]Este proceso puede tardar varios minutos$z"
            sleep 2
            clear
            echo -e "[*]Se abrira una nueva venta"
            sleep 5
            echo
            gnome-terminal --tab -e "bash -c ' sudo md5sum $m5 && sleep 3000'" 
            sleep 10
            clear
            toilet Forensics
            echo 
            menu_principal
            elif [ $opcion = "Sha256" ]; then
            echo
            echo -e "[*]Integridad de la evidencia"
            echo
            clear
            echo -e "[*]Listando unidades"
            sleep 3
            clear
            fdisk -l
            echo
            echo
            echo -e "[*]Escriba la unidad de su disco a elegir (/dev/sdb) "
            read -p "Unidad :" sha
            sleep 3
            clear
            echo -e "$z [*]Este proceso puede tardar varios minutos$z"
            sleep 2
            clear
            echo -e "$z[*]Esperando el Hash de $sha $z"
            echo
            gnome-terminal --tab -e "bash -c ' sudo sha256sum $sha && sleep 3000'" 
            sleep 10
            clear
            toilet Forensics
            echo 
            menu_principal        
            elif [ $opcion = "Menu" ]; then
                        sleep 3s
                         clear
                         toilet Forensics
                         echo
                         menu_principal
                        fi 
                    done
;;


$d)
echo -e "$v[*]Analysis de Imagenes/Memoria:$v"
sleep 3
clear
toilet Analisis 
sleep 2
echo
metodos="Volatility Binwalk Autopsy Menu"
echo
select opcion in $metodos;
do
sleep 3s
clear

            if [ $opcion = "Volatility" ]; then
                  echo
                  sleep 2

                  volati="Volatility0 Volatility_Personalizado"
                  echo
                  select opcion in $volati;
                  do
                  sleep 3

                  toilet Volatility
                  echo
                  if [ $opcion = "Volatility0" ]; then
                  echo
                  sleep 2
                  clear
                  toilet Volatility
                  sleep 2
                  echo
                  echo -e "$v[+]Escriba el nombre o la ruta de su imagen forense  (example.img)$v "
                  read -p "nombre: " vol 
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Nombre a guardar\e[1;39m "
                  read -p "nombre:" vola 
                  sleep 2
                  echo
                  clear
                  echo -e "[*]Buscando informacion de la imagen"
                  sleep 2
                  echo
                  echo -e "\e[1;39m[*]Esto puede tardar unos minutos\e[1;39m"
                  echo
                  sleep 3
                  vol.py -f $vol imageinfo 
                  sleep 4 
                  echo -e "\e[1;39mSi posee informacion especifica de la imagen configura los parametros siguientes/Ctrl_C[Salir]\e[1;39m"
                  sleep 5
                  echo
                  echo -e "[+]Configurar el dtb [0x39000]"
                  read -p ">>> : " dt
                  sleep 2
                  echo
                  echo -e "[+]Configurar el kdbg [$v 0x805693d0$v]"
                  read -p ">>> : " kd
                  sleep 2
                  echo
                  echo -e "[+]Configurar el kpcr [$v 0xffdff000$v]"
                  read -p ">>> : " kp
                  sleep 2
                  echo
                  echo -e "[+]Configurar el profile [$v Win2003SP0x86$v]"
                  read -p ">>> : " pr
                  sleep 2
                  echo -e "Escriba el escaneo a realizar [$v pstree/sockscan/connscan$v]"
                  read -p ">>> : " scan 
                  sleep 3
                  cd volatility
                  clear
                  python vol.py -f $vol --dtb=$dt --kdbg=$kd --kpcr=$kp --profile=$pr $scan --output-file=$vola
                  sleep 5
                  echo
                  echo
                  mv $vola volatility/archivos 
                  echo -e "[ANALISIS COMPLETO]Archivos guardados en volatility/archivos/$vola/"
                  sleep 3s
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$v"
                  sleep 10
                  cd ../
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal
                  elif [ $opcion = "Volatility_Personalizado" ]; then 
                  clear
                  toilet Volatility Scan
                  echo
                  echo -e "$v[+]Escriba el nombre o la ruta de su imagen forense  (example.img)$v "
                  read -p "nombre: " voll 
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Nombre a guardar\e[1;39m "
                  read -p "nombre:" volaa 
                  sleep 2
                  echo
                  echo -e "\e[1;39mSi posee informacion especifica de la imagen configura los parametros siguientes/Ctrl_C[Salir]\e[1;39m"
                  sleep 5
                  echo
                  echo -e "[+]Configurar el dtb [$v 0x39000]$v"
                  read -p ">>> : " dtt
                  sleep 2
                  echo
                  echo -e "[+]Configurar el kdbg [$v 0x805693d0$v]"
                  read -p ">>> : " kdd
                  sleep 2
                  echo
                  echo -e "[+]Configurar el kpcr [$v 0xffdff000$v]"
                  read -p ">>> : " kpp
                  sleep 2
                  echo
                  echo -e "[+]Configurar el profile [$v Win2003SP0x86$v]"
                  read -p ">>> : " prr
                  sleep 2
                  echo -e "Escriba el escaneo a realizar [$v pstree/sockscan/connscan$v]"
                  read -p ">>> : " scann
                  sleep 3
                  cd volatility
                  clear
                  python vol.py -f $voll --dtb=$dtt --kdbg=$kdd --kpcr=$kpp --profile=$prr $scann --output-file=$volaa
                  sleep 5
                  echo
                  echo
                  mv $volaa archivos/ 
                  echo -e "[ANALISIS COMPLETO]Archivos guardados en archivos/$volaa/"
                  sleep 3s
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$v"
                  sleep 10
                  cd ../
                  clear
                  toilet Forensics
                  echo
                  ech
                  menu_principal
                  fi
                  done

                elif [ $opcion = "Binwalk" ]; then
                echo
                  toilet Binwalk
                  sleep 2
                  echo
                  echo -e "$v[+]Escriba el nombre de la ruta de su imagen forense  (example.img)$v "
                  read -p "nombre: " bin
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Nombre a guardar\e[1;39m "
                  read -p "nombre:" binw
                  sleep 2
                  echo
                  clear
                  echo -e "\e[1;39m[*]Esto puede tardar unos minutos\e[1;39m"
                  echo
                  cd bilwalk/
                  gnome-terminal --tab -e "bash -c ' sudo binwalk -B $bin -f $binw / && sleep 30000'" 
                  sleep 4
                  cd ../
                  clear
                  echo
                  echo -e "[AALISIS COMPLETO]Archivos guardados en bilwalk/$binw /"
                  sleep 4
                  clear
                  echo -e "$v[*]\e[1;93mVolviendo al menu principal$z"
                  sleep 10
                  clear
                  toilet Forensics
                  echo
                  menu_principal
                  echo
                  sleep 2s
                  elif [ $opcion = "Autopsy" ]; then
                  sleep 2s
                  clear
                  toilet Autopsy
                  echo
                  echo 
                  echo -e "[*]Ejecutando Autopsy GUI"
                  sleep 4
                  clear
                  gnome-terminal --tab -e "bash -c ' sudo  autopsy  && sleep 300000'" 
                  sleep 10
                  clear 
                  echo
                  toilet Forensics
                  echo
                  menu_principal
                  elif [ $opcion = "Menu" ]; then
                        sleep 3s
                         clear
                         echo
                         toilet Forensics
                         echo
                         sleep 2
                         menu_principal
                         clear
                        fi 
                    done

;;

$e)
clear
echo -e "$v[*]Salir:$v"
echo -e "Seleccionaste la opcion para salir del programa..."
sleep 2s
echo -e "bye"
clear
exit
;;













*)
echo -e "$m(*)$m no es una opcion valida..."
;;

esac 
done

}
menu_principal








