date_format=$(date +'%d-%m-%Y-%H:%M')
utilisateur="ahmed"
nb_connections=$(last "$utilisateur" | wc -l )
nom_fichier="number_connections-$date_format"
echo "$nb_connections" >> "$nom_fichier"
tar -czf "/home/ahmed/Shell.exe/Job08/backup/$nom_fichier.tar" "$nom_fichier"
