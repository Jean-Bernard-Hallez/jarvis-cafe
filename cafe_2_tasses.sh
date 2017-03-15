#!/bin/bash

Id_Cafe_MA="843"
Id_Cafe_Bouton2T="841"
IP_Domoticz="http://192.168.0.17:8080"

sudo -u pi /home/pi/jarvis/jarvis.sh -s "Préchauffage pour deux tasses en cours..."
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_MA&switchcmd=On"
sleep 45

echo "J'actionne pour deux tasses"
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_Bouton2T&switchcmd=On"

sleep 11
curl "$IP_Domoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_MA&switchcmd=On"
sudo -u pi /home/pi/jarvis/jarvis.sh -s "Vos deux tasses sont prêtes." 


