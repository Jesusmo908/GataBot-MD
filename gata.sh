# Código creado por @gata_dios

#!/data/data/com.termux/files/usr/bin/bash 
# Interpretación determinada para la ejecución 

echo -e "\033[01;32m\033[01mInstalando dependencias!\033[0m" 
 
echo -e "\033[1;31mNo se pudo instalar Git. Verifique su conexión a Internet e inténtelo de nuevo más tarde.\nSi el error continúa Instale de forma manual\n\n\033[0m" 
echo -e "\033[01;33mpkg install git -y
pkg install nodejs -y
pkg install ffmpeg -y
pkg install imagemagick -y
git clone https://github.com/GataNina-Li/GataBot-MD
cd GataBot-MD
npm start\033[0m"

echo -e "\e[35m
██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░██╗░░░░░
██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░
██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░██║░░░░░
██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██║░░░░░
██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗███████╗
╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝

░██████╗░██╗████████╗
██╔════╝░██║╚══██╔══╝
██║░░██╗░██║░░░██║░░░
██║░░╚██╗██║░░░██║░░░
╚██████╔╝██║░░░██║░░░
░╚═════╝░╚═╝░░░╚═╝░░░\n\e[0m"

if pkg install git -y; then
echo -e "\u001b[32mGit se ha instalado correctamente."
else
echo -e "\033[1;31mNo se pudo instalar Git. Verifique su conexión a Internet e inténtelo de nuevo más tarde.\n\nSi el error continúa Instale de forma manual\n\n\033[0m" 
echo -e "\033[01;33m
pkg install git -y
pkg install nodejs -y
pkg install ffmpeg -y
pkg install imagemagick -y
git clone https://github.com/GataNina-Li/GataBot-MD
cd GataBot-MD
npm start\033[0m"
exit 1
fi


echo -e "\u001b[36mInstalando Node.js..."
if pkg install nodejs -y; then
  echo -e "\u001b[32mNode.js se ha instalado correctamente."
else
  echo -e "\u001b[31mNo se pudo instalar Node.js. Verifique su conexión a Internet e inténtelo de nuevo más tarde.\n\nSi el error continúa Instale de forma manual\n\n pkg install git -y \n pkg install nodejs -y \n pkg install ffmpeg -y \n pkg install imagemagick -y \n git clone https://github.com/GataNina-Li/GataBot-MD \n cd GataBot-MD \n npm start\n"
  exit 1
fi


echo -e "\u001b[36mInstalando FFmpeg..."
if pkg install ffmpeg -y; then
  echo -e "\u001b[32mFFmpeg se ha instalado correctamente."
else
  echo -e "\u001b[31mNo se pudo instalar FFmpeg. Verifique su conexión a Internet e inténtelo de nuevo más tarde.\n\nSi el error continúa Instale de forma manual\n\n pkg install git -y \n pkg install nodejs -y \n pkg install ffmpeg -y \n pkg install imagemagick -y \n git clone https://github.com/GataNina-Li/GataBot-MD \n cd GataBot-MD \n npm start\n"
  exit 1
fi


echo -e "\u001b[36mInstalando ImageMagick..."
if pkg install imagemagick -y; then
  echo -e "\u001b[32mImageMagick se ha instalado correctamente."
else
  echo -e "\u001b[31mNo se pudo instalar ImageMagick. Verifique su conexión a Internet e inténtelo de nuevo más tarde.\n\nSi el error continúa Instale de forma manual\n\n pkg install git -y \n pkg install nodejs -y \n pkg install ffmpeg -y \n pkg install imagemagick -y \n git clone https://github.com/GataNina-Li/GataBot-MD \n cd GataBot-MD \n npm start\n"
  exit 1
fi

echo -e "\u001b[32mTodas las dependencias se han instalado correctamente."

echo -e "\u001b[36mClonando el repositorio!"
git clone https://github.com/GataNina-Li/GataBot-MD.git

echo -e "\u001b[36mCambiando al directorio del repositorio!"
cd GataBot-MD

#idioma_valido=""
#echo "Por favor, seleccione uno de los siguientes idiomas: en, es, pt, ar, o id."
#while [ "$idioma_valido" = false ]
#do
#    read -p "¿Qué idioma desea para el bot? " idioma_sh
#    if [ "$idioma_sh" = "en" ] || [ "$idioma_sh" = "es" ] || [ "$idioma_sh" = "pt" ] || [ "$idioma_sh" = "ar" ] || [ "$idioma_sh" = "id" ]
#    then
#        idioma_valido=true
#        sed -i "s/export let idioma_sh = null/export let idioma_sh = '$idioma_sh'/" config.js
#    else
#        echo -e "\u001b[31mIdioma no válido. Por favor, seleccione uno de los siguientes idiomas: en, es, pt, ar, o id."
#    fi
#done

function read_language {
    # Borra pantalla
    printf "\e[2J\e[H"

    # Muestra las opciones de idioma
    echo "Elige un idioma:"
    echo "1) Español"
    echo "2) English"

    # Lee la respuesta del usuario
    read -p "Selecciona una opción: " resp_idioma

    # Establece el archivo de diccionario correspondiente
    if [ ${resp_idioma} -eq "1" ]
    then
        exec 0< dict_es.dat
    else
        exec 0< dict_en.dat
    fi

    # Lee las palabras del diccionario y las almacena en el arreglo "word"
    i=0
    while read LINE
    do
        word[i]=$LINE
        i=`expr $i + 1`
    done
}

read_language

echo ${word[@]}

echo -e "\u001b[36mIniciando GataBot!"
npm start


