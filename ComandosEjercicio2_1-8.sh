
#cambiar nombre al equipo
sudo hostnamectl set-hostname ubuntuexa
#FABRICIA RODRIGUES ROSA 2025

#crear grupos
sudo groupadd alumnos
sudo groupadd profesores
#crear usuarios 
sudo useradd -m -g alumnos -e 2028-12-31 alum1
sudo useradd -m -g alumnos -e 2028-12-31 alum2
sudo useradd -m -g profesores usuadm
#FABRICIA RODRIGUES ROSA 2025

#crear directorios
sudo mkdir -p /home/alum1 /home/alum2 /home/usuadm/compartir
#-P crea los directorios padres aunq no existan
sudo touch /home/alum1/listado.txt /home/alum1/prueba.txt
sudo touch /home/alum1/docum.txt
sudo touch /home/usuadm/notas.txt
sudo touch /home/usuadm/compartir/ejercicios.txt
#FABRICIA RODRIGUES ROSA 2025


#2.4
ls /etc | grep '^c.o' > listado.txt
cat listado.txt
#FABRICIA RODRIGUES ROSA 2025

#2.5
{ tail -n 3 /etc/passwd; tail -n 2 /etc/group; } > prueba.txt
cat prueba.txt
#FABRICIA RODRIGUES ROSA 2025

#2.6
cat listado.txt prueba.txt | sort | uniq > documento.txt 2> errores.txt
#FABRICIA RODRIGUES ROSA 2025

#2.7
#1
sudo chown alum1:alumnos /home/alum1/*
chmod 640 /home/alum1/* 

#2
setfacl -m u:usudm:r /home/alum1/*
chmod -R 777 /home/usuadm/compartir/*

#3
sudo chown usuadm:profesores /home/usuadm/*
chrmod 640 /home/usuadm/notas.txt
#FABRICIA RODRIGUES ROSA 2025

#2.8
history | tail -n 40 > /home/fabri/historial.txt

#para copiar el fichero
sudo cp /home/fabri/historial.txt /home/historial.txt
#FABRICIA RODRIGUES ROSA 2025
