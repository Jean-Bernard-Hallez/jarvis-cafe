#!/bin/bash

Id_Cafe_MA="843"
Id_Cafe_Bouton2T="841"
IP_Domoticz="http://192.168.0.17:8080"

sudo -u pi /home/pi/jarvis/jarvis.sh -s "Préchauffage en cours pour le bol de café..."
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_MA&switchcmd=On"
sleep 45

echo "J'actionne pour 1 bol"
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_Bouton2T&switchcmd=On"
sleep 22

echo "Attente second préchauffage"
sleep 22

echo "J'actionne pour encore un peu de café"
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_Bouton2T&switchcmd=On"
sleep 11

curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_MA&switchcmd=On"
sudo -u pi /home/pi/jarvis/jarvis.sh -s "Votre bol de café est prêt."