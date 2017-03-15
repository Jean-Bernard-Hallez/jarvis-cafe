#!/bin/bash

jv_pg_ct_cafe_1tasse () {
# jv_curl "$AddressDomoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_1tasse&switchcmd=On"
/home/pi/jarvis/plugins/jarvis-cafe/cafe_1_tasse.sh
}

jv_pg_ct_cafe_2tasses () {
# jv_curl "$AddressDomoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_2tasses&switchcmd=On"
/home/pi/jarvis/plugins/jarvis-cafe/cafe_2_tasses.sh
}

jv_pg_ct_cafe_Bol () {
# jv_curl "$AddressDomoticz/json.htm?type=command&param=switchlight&idx=$Id_Cafe_Bol&switchcmd=On"
/home/pi/jarvis/plugins/jarvis-cafe/cafe_1Bol.sh
}



