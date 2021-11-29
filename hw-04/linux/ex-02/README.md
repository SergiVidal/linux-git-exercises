```console
touch script.sh
chmod 700 script.sh
chmod +x script.sh

./script.sh
```

  * Se ha modificado la Linea 13 del fichero script.sh para hacer coincidir con el dia actual (Lunes == 1... Domingo == 7) y poder testear la condición de fin de semana.
  * Se han hardcodeado los ficheros de los 6 días anteriores para poder hacer el .tar.gz de toda la semana.