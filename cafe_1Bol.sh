#!/bin/bash

Id_Cafe_MA="843"
Id_Cafe_Bouton2T="841"
IP_Domoticz="http://192.168.0.17:8080"

# echo "Préchauffage en cours..."
sudo -u pi /home/pi/jarvis/jarvis.sh -s "Préchauffage en cours..."
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_MA&switchcmd=On"
sudo -u pi /home/pi/jarvis/jarvis.sh -s "Pour un bol de café..."

sleep 45

# echo "J'actionne pour 1 bol"
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_Bouton2T&switchcmd=On"
sleep 45

# echo "Attente second préchauffage"
sleep 25

sudo -u pi /home/pi/jarvis/jarvis.sh -s "C'est presque fini..."
# echo "J'actionne pour encore un peu de café"
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_Bouton2T&switchcmd=On"
sleep 11

curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_MA&switchcmd=On"
sudo -u pi /home/pi/jarvis/jarvis.sh -s "Votre bol de café est prêt."