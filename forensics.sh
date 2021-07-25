#!/bin/bash

trap 'printf "\n";stop;exit 1' 2
r="\e[1;91m"
v="\e[1;92m"
a="\e[1;93m"
b="\e[1;39m"
m="\e[1;96m"
z="\e[1;94m"



paquetes(){
        command -v foremost > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b foremost Not installed"; exit 1;}
        command -v bulk_extractor > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b bulk_extractor Not installed"; exit 1;}
        command -v guymager > /dev/null 2>&1 || { echo >&2 -e "$v[*]$bguymager Not installed"; exit 1;}
        command -v dc3dd > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b dc3dd Not installed "; exit 1;}
        command -v autopsy > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b autopsy Not installed"; exit 1;}
        command -v memdump > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b memdump Not installed"; exit 1;}
        command -v toilet > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b toilet Not installed"; exit 1;}
        command -v chkrootkit > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b chkrootkit Not installed"; exit 1;}
        command -v crash > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b crash Not installed"; exit 1;}
        command -v scalpel > /dev/null 2>&1 || { echo >&2 -e "$v[*]$b scalpel  Not installed"; exit 1;}
       
       

}

sleep 2s

 function toi(){
     toilet checker
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
echo -e "$a //Open Source Forensics Analysis Tool$a     *  "
echo -e  "$a*******************************************************$b"



#Opciones del menu
a="Forensic image creation:  "
b="File Recovery:"
c="Hash validation:"
d="Image/Memory Analysis:"
e="Exit the program"


PS3="Select an option: "

#Funcion para la creacion de imagen
function menu_principal(){

echo
select menu in "$a" "$b" "$c" "$d" "$e";
do
case $menu in
$a)
clear
sleep 3
toilet creation
echo
metodos="IMG_Dc3dd IMG_Guymager IMG_DD Menu"

select opcion in $metodos;
do
sleep 3s
clear

            if [ $opcion = "IMG_Dc3dd" ]; then
                  echo
                  echo -e " $m[*]Forensic image creation:$m"
                  sleep 2
                  clear
                  echo -e "[*]Listing all connected drives and devices (Enter):"
                  read discos
                  sleep 2s
                  sudo fdisk -l
                  sleep 3s
                  echo
                  sleep 10
                  clear
                  echo -e "[*]Type the drive of your disk to choose (/dev/sdb) "
                  read -p "Unidad :" uni
                  sleep 2
                  echo
                  echo -e "[*]Write the hash type (md5/sha1)"
                  read -p "Hash: " has
                  sleep 2
                  echo
                  echo -e "[*]Write the type of parameter to save (dd/img/iso)"
                  read -p "image: " imag 
                  sleep 2
                  echo
                  echo -e "[*]Write the name to save"
                  read -p "archivo: " arch
                  sleep 2
                  echo
                  clear
                  echo -e "[*]This process may take a while"
                  echo
                  clear
                  echo -e "[*]Image Creation"
                  dc3dd if=$uni hash=$has log=dc3ddusb of=$arch.$imag
                  sleep 10
                  clear
                  echo -e "$v[*]\e[1;93mGoing back to the main menu$v"
                  sleep 10
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal


                elif [ $opcion = "IMG_Guymager" ]; then
                sleep 2s
                clear
                toilet Guymager
                echo
                echo 
                echo -e "[*]Running Guymager GUI"
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
                  echo -e " $m[*]Forensic image creation:$m"
                  sleep 2
                  clear
                  echo -e "[*]Listing all connected drives and devices (Enter):"
                  read discos
                  sleep 2s
                  sudo fdisk -l
                  sleep 3s
                  echo
                  sleep 5
                  echo
                  echo
                  echo -e "[*]Type the drive of your disk to choose (/dev/db) "
                  read -p "Unidad :" un
                  sleep 2
                  clear
                  echo
                  echo -e "[*]Write the type of parameter to save (dd/img/iso)"
                  read -p "image: " imagg 
                  sleep 2
                  echo
                  echo -e "[*]Write the name to save"
                  read -p "archivo: " archh
                  sleep 2
                  echo
                  clear
                  echo -e "[*]This process may take a while"
                  echo
                  clear
                  echo -e "[*]Creating Image in new window"
                  #dd if=$un of=$archh.$imagg bs=512 conv=noerror,sync
                  gnome-terminal --tab -e "bash -c ' sudo  dd if=$un of=$archh.$imagg bs=512 conv=noerror,sync  && sleep 30000'" 
                  sleep 10
                  clear
                  echo -e "$v[*]\e[1;93mGoing back to the main menu$v"
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
                  echo -e "$v[+]Enter the name or path of your forensic image(example.img)$v "
                  read -p "nombre: " fore
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Name to save\e[1;39m "
                  read -p "nombre:" foree 
                  sleep 2
                  echo
                  clear
                  echo -e "\e[1;39m[*]This may take a few minutes\e[1;39m"
                  echo
                  sleep 3
                  foremost -i $fore -o foremostt/$foree
                  sleep 4
                  clear
                  echo -e "[FULL CARVING] Files saved in foremostt/$foree /"
                  sleep 3s
                  clear
                  echo -e "$v[*]\e[1;93mGoing back to the main menu$v"
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
                  echo -e "$v[+]Enter the name or path of your forensic image(example.img)$v "
                  read -p "nombre: " sca
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Name to save \e[1;39m "
                  read -p "nombre:" scal
                  sleep 2
                  echo
                  clear
                  echo -e "\e[1;39m[*]This may take a few minutes\e[1;39m"
                  echo
                  cd scalpel-output
                  scalpel -o $scal $sca
                  sleep 4
                  clear
                  echo
                  echo -e "[FULL CARVING]Files saved in scalpel-output/$scal /"
                  sleep 4
                  cd ../
                  clear
                  echo -e "$v[*]\e[1;93mGoing back to then main menu$v"
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
                  echo -e "$v[+]Enter the path of your forensic image(/home/kali/example.img)$v "
                  read -p "nombre: " bul
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Name to saved\e[1;39m "
                  read -p "nombre:" bulk
                  sleep 2
                  cd bulk-output
                  echo
                  clear
                  echo -e "\e[1;39m[*]This may take a few minutes\e[1;39m"
                  echo
                  sleep 2
                  bulk_extractor -o $bulk $bul
                  echo
                  sleep 3
                  echo -e "[+]FULL PICTURE CARVING"
                  sleep 3
                  cd ../ 
                  clear
                  echo -e "$v[*]\e[1;93mGoind back to then main menu$v"
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
                  echo -e "$v[*]Type the drive of your disk to choose(/dev/sdb)$v "
                  read -p "nombre: " rec
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Name to saved\e[1;39m "
                  read -p "nombre:" reco
                  sleep 2
                  echo
                  clear
                  echo -e "\e[1;39m[*]This may take a few minutes\e[1;39m"
                  echo
                  sleep 3
                  cd recoverjpeg
                  mkdir $reco
                  cd $reco
                  recoverjpeg $rec
                  sleep 4
                  clear
                  echo -e "[FULL CARVING]Files  saved in recoverjpeg/$foree /"
                  sleep 3
                  cd ../../
                  clear
                  echo -e "$v[*]\e[1;93mGoind back to then main menu$v"
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
            echo -e "[*]Listing units"
            sleep 3
            clear
            fdisk -l
            sleep 2
            echo
            echo
            echo -e "[*]Type the drive of your disk to choose(/dev/sdb) "
            read -p "Unidad :" m5
            echo
            sleep 3
            clear
            echo -e "$z [*]This process can take several minutes$z"
            sleep 2
            clear
            echo -e "[*]A new sale will open"
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
            echo -e "[*]Integrity of the evidence"
            echo
            clear
            echo -e "[*]Listing units"
            sleep 3
            clear
            fdisk -l
            echo
            echo
            echo -e "[*]Type the drive of your disk to choose(/dev/sdb) "
            read -p "Unidad :" sha
            sleep 3
            clear
            echo -e "$z [*]This process can take several minutes$z"
            sleep 2
            clear
            echo -e "$z[*]Waiting for the Hash of$sha $z"
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
clear
sleep 3
echo -e "$v[*]Image/Memory Analysis:$v"
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

                  volati="Volatility0 Volatility_Customized"
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
                  echo -e "$v[+]Enter the name or path of your forensic image(example.img)$v "
                  read -p "nombre: " vol 
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Name to saved\e[1;39m "
                  read -p "nombre:" vola 
                  sleep 2
                  echo
                  clear
                  echo -e "[*]Searching image information"
                  sleep 2
                  echo
                  echo -e "\e[1;39m[*]This may take a few minutes\e[1;39m"
                  echo
                  sleep 3
                  vol.py -f $vol imageinfo 
                  sleep 4 
                  echo -e "\e[1;39mIf you have specific information about the image, configure the following parameters  Ctrl_C[Salir]\e[1;39m"
                  sleep 5
                  echo
                  echo -e "[+]Configure the dtb [0x39000]"
                  read -p ">>> : " dt
                  sleep 2
                  echo
                  echo -e "[+]Configure the kdbg [$v 0x805693d0$v]"
                  read -p ">>> : " kd
                  sleep 2
                  echo
                  echo -e "[+]Configure the kpcr [$v 0xffdff000$v]"
                  read -p ">>> : " kp
                  sleep 2
                  echo
                  echo -e "[+]Configure the profile [$v Win2003SP0x86$v]"
                  read -p ">>> : " pr
                  sleep 2
                  echo -e "Write the scan to be carried out[$v pstree/sockscan/connscan$v]"
                  read -p ">>> : " scan 
                  sleep 3
                  cd volatility
                  clear
                  python vol.py -f $vol --dtb=$dt --kdbg=$kd --kpcr=$kp --profile=$pr $scan --output-file=$vola
                  sleep 5
                  echo
                  echo
                  mv $vola volatility/archivos 
                  echo -e "[COMPLETE ANALYSIS] Files saved in volatility/archivos/$vola/"
                  sleep 3s
                  clear
                  echo -e "$v[*]\e[1;93mGoing back to the main menu$v"
                  sleep 10
                  cd ../
                  clear
                  toilet Forensics
                  echo
                  echo
                  menu_principal
                  elif [ $opcion = "Volatility_Customized" ]; then 
                  clear
                  toilet Volatility Scan
                  echo
                  echo -e "$v[+]Enter the name or path of your forensic image(example.img)$v "
                  read -p "nombre: " voll 
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Name to saved\e[1;39m "
                  read -p "nombre:" volaa 
                  sleep 2
                  echo
                  echo -e "\e[1;39mIf you have specific information about the image, configure the following parameters/Ctrl_C[Salir]\e[1;39m"
                  sleep 5
                  echo
                  echo -e "[+]Configure the dtb [$v 0x39000]$v"
                  read -p ">>> : " dtt
                  sleep 2
                  echo
                  echo -e "[+]Configure the kdbg [$v 0x805693d0$v]"
                  read -p ">>> : " kdd
                  sleep 2
                  echo
                  echo -e "[+]Configure the kpcr [$v 0xffdff000$v]"
                  read -p ">>> : " kpp
                  sleep 2
                  echo
                  echo -e "[+]Configure the profile [$v Win2003SP0x86$v]"
                  read -p ">>> : " prr
                  sleep 2
                  echo -e "Write the scan to be carried out[$v pstree/sockscan/connscan$v]"
                  read -p ">>> : " scann
                  sleep 3
                  cd volatility
                  clear
                  python vol.py -f $voll --dtb=$dtt --kdbg=$kdd --kpcr=$kpp --profile=$prr $scann --output-file=$volaa
                  sleep 5
                  echo
                  echo
                  mv $volaa archivos/ 
                  echo -e "[COMPLETE ANALYSIS] Files saved in archives/$volaa/"
                  sleep 3s
                  clear
                  echo -e "$v[*]\e[1;93mGoing back to the main menu$v"
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
                  echo -e "$v[+]Enter the path name of your forensic image(example.img)$v "
                  read -p "nombre: " bin
                  echo
                  sleep 2
                  echo -e "\e[1;39m[+]Nema to saved\e[1;39m "
                  read -p "nombre:" binw
                  sleep 2
                  echo
                  clear
                  echo -e "\e[1;39m[*]This may take a few minutes\e[1;39m"
                  echo
                  cd bilwalk/
                  gnome-terminal --tab -e "bash -c ' sudo binwalk -B $bin -f $binw / && sleep 30000'" 
                  sleep 4
                  cd ../
                  clear
                  echo
                  echo -e "[COMPLETE ANALYSIS] Files saved in bilwalk/$binw /"
                  sleep 4
                  clear
                  echo -e "$v[*]\e[1;93mGoing back to the main menu$z"
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
                  echo -e "[*]Running Autopsy GUI"
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
echo -e "You selected the option to exit the program..."
sleep 2s
echo -e "bye"
clear
exit
;;


*)
echo -e "$m(*)$m It is not a valid option..."
;;

esac 
done

}
menu_principal
