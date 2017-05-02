<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
(02/05/17 Correction suite modif du "plugins_installed")
Avec Domoticz, il me prépare à la demande 1 ou 2 tasses de café ou 1 bol.
J'ai rajouté le FIBARO System FGS222 dans ma machine philips senséo

La programmation du dosage est sur 3 fichiers "bash" indépendant afin de les commander par un interrupteur virtuel, de domoticz par exemple.
(dans ce cas rajouter dans votre inter dans "ACTION ON" --> script:///home/pi/jarvis/plugins/jarvis-cafe/cafe_1_tasse.sh etc...)
(et "délais d'extinction" des boutons 5 secondes
C'est à vous de le modifier en conséquence avec votre timing à vous.
cafe_2_tasses.sh
cafe_1_tasse.sh
cafe_1Bol.sh


## Languages

* Français


## Usage
```
You: Peux tu me préparer une tasse de café ?
Jarvis:  Est-ce que la tasse de café est bien mise en place ?
You: Oui
Jarvis:  Ok je lance la procédure

lorsque c'est fait...

Jarvis:  Votre café est prêt...

```

## Author
[JBHallez](https://github.com/Jean-Bernard-Hallez/jarvis-cafe)
