Reverse Vending Machine Script for GTA FiveM
🚮 Beschreibung
Das Reverse Vending Machine-Script ermöglicht es Spielern, leere Pfandflaschen in einer umweltfreundlichen Weise abzugeben und dafür Belohnungen zu erhalten. Dieses Script kombiniert die Interaktivität von ox_target und das Benachrichtigungssystem von ESX, um eine realistische und unterhaltsame Möglichkeit zu bieten, Flaschen zu recyceln. Die Spieler können wählen, ob sie dafür Geld oder Items erhalten, je nach den Konfigurationseinstellungen des Servers.

🛠 Funktionen
Interaktive Reverse Vending Machine: Spieler können mit einer Reverse Vending Machine interagieren, die als Prop im Spiel hinzugefügt wird.
Flexible Belohnungssysteme: Wählen Sie in der Config, ob Spieler für das Abgeben von Flaschen Geld oder Items erhalten.
ESX Benachrichtigungen: Nutzt das Standard-ESX Benachrichtigungssystem, um Spieler zu benachrichtigen, wenn sie eine Flasche erfolgreich abgegeben haben.
Einfache Integration: Kann problemlos in jeden ESX-basierten Server integriert werden.
Konfigurierbar: Das Script bietet zahlreiche Anpassungsmöglichkeiten, darunter die Auswahl, welche Belohnung die Spieler erhalten sollen.
⚙️ Installation
Download und Installation:
Lade das Script herunter und füge den Ordner in dein resources-Verzeichnis auf dem Server ein.

Server-Konfiguration:
Bearbeite die config.lua, um die gewünschten Belohnungen (Geld oder Items) und andere Einstellungen zu konfigurieren.
Beispiel:

lua
Kopieren
Bearbeiten
Config.RewardType = "money"  -- Optionen: "money", "item"
Starten des Scripts:
Füge in deiner server.cfg folgende Zeile hinzu:

bash
Kopieren
Bearbeiten
start reverse_vending
Interaktive Nutzung:
Platziere die Reverse Vending Machine-Props im Spiel und stelle sicher, dass sie mit dem ox_target-System interagierbar sind. Die Spieler können dann Flaschen abgeben und werden sofort mit der entsprechenden Belohnung benachrichtigt.

🔧 Konfiguration
In der config.lua kannst du die folgenden Optionen anpassen:

RewardType: Wählen, ob Spieler Geld oder Items für das Abgeben der Flaschen erhalten.
RewardAmount: Definiere den Betrag an Geld oder die Anzahl an Items, die für jede abgegebene Flasche vergeben wird.
Beispiel:

lua
Kopieren
Bearbeiten
Config.RewardType = "money"        -- Geld oder Items als Belohnung
Config.RewardAmount = 50           -- Betrag oder Anzahl
🧳 Benötigte Ressourcen
ESX Framework: Für die Benachrichtigung und die Inventarverwaltung.
ox_target: Um Interaktionen mit der Reverse Vending Machine zu ermöglichen.
💡 Features & Anpassungen
Einfache Anpassung der Belohnung: Lege fest, ob Spieler Flaschen gegen Geld oder Items eintauschen.
Realistisches Recycling-Erlebnis: Fördert umweltbewusstes Verhalten im Spiel!
Optimiert für Performance: Geringer Ressourcenverbrauch und reibungslose Funktionalität.
📄 Lizenz
Dieses Script ist Open Source und kann nach Belieben angepasst werden. Achte jedoch darauf, die ursprünglichen Credits beizubehalten, wenn du das Script weitergibst oder veröffentlichst.
