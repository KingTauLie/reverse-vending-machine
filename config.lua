Config = {}

-- Prop der Reverse Vending Machine
Config.PropName = "as_rv_machine_prop"  -- Beispielprop

-- Belohnung pro Flasche
Config.RewardPerBottle = 5  -- Betrag in $ pro Flasche (nur bei Geldbelohnung)

-- Itemname der Pfandflasche im Inventar
Config.BottleItem = "bottle"

-- Belohnungsart
Config.RewardType = "item"  -- Optionen: "money" für Geld oder "item" für ein Item

-- Itemname der Belohnung (nur bei RewardType "item")
Config.RewardItem = "raine"  -- Beispiel-Item für die Belohnung, z.B. eine Quittung

-- ox_target Einstellungen
Config.TargetLabel = "Pfandflaschen abgeben"
Config.TargetDistance = 2.0

-- Positionen der Reverse Vending Machines
Config.Locations = {
    {x = -337.8727, y = -1534.0553, z = 26.7154, heading = 356.8966}
}