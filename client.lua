local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

CreateThread(function()
    local prop = Config.PropName

    for _, location in ipairs(Config.Locations) do
        local obj = CreateObject(GetHashKey(prop), location.x, location.y, location.z, false, false, false)
        PlaceObjectOnGroundProperly(obj)
        SetEntityHeading(obj, location.heading)
        FreezeEntityPosition(obj, true)

        exports['ox_target']:addLocalEntity(obj, {
            {
                name = "reverse_vending",
                label = Config.TargetLabel,
                icon = "fa-solid fa-recycle",
                distance = Config.TargetDistance,
                onSelect = function(data)
                    OpenVendingMenu()
                end
            }
        })
    end
end)

function OpenVendingMenu()
    print("Opening vending menu...") -- Debugging Hinweis

    ESX.UI.Menu.Open(
        'dialog',
        GetCurrentResourceName(),
        'reverse_vending',
        {
            title = "Anzahl der Flaschen"
        },
        function(data, menu)
            local bottleCount = tonumber(data.value)

            print("Eingegebene Anzahl: " .. tostring(bottleCount)) -- Debugging Hinweis

            if bottleCount == nil or bottleCount <= 0 then
                ESX.ShowNotification("Ungültige Anzahl eingegeben.")
                menu.close()
                return
            end

            -- Fortschrittsbalken starten
            exports['esx_progressbar']:Progressbar("Flaschen abgeben", 5000, { -- 5000ms = 5 Sekunden
                FreezePlayer = true,
                animation = {
                    type = "anim",
                    dict = "missbigscore2aig_3",
                    lib = "wait_for_van_c"
                },
                onFinish = function()
                    -- Server-Event nach Abschluss des Fortschrittsbalkens auslösen
                    TriggerServerEvent('reverse_vending:process', bottleCount)
                    menu.close()
                end,
                onCancel = function()
                    ESX.ShowNotification("Aktion abgebrochen.")
                    menu.close()
                end
            })

            -- Menü schließen, falls der Spieler die Abgabe sofort abschließen möchte
            menu.close()
        end,
        function(data, menu)
            menu.close()
        end
    )
end


Citizen.CreateThread(function()
    -- Gehe durch die Konfiguration und erstelle für jeden Standort einen Blip
    for _, location in ipairs(Config.Locations) do
        -- Blip für den Standort erstellen
        local blip = AddBlipForCoord(location.x, location.y, location.z)

        -- Blip-Einstellungen
        SetBlipSprite(blip, 467)  -- Sprite des Blips (z. B. für Mülltonnen)
        SetBlipColour(blip, 2)    -- Farbe des Blips (z. B. grün)
        SetBlipScale(blip, 0.8)   -- Skalierung des Blips
        SetBlipAsShortRange(blip, true)  -- Blip nur in der Nähe sichtbar

        -- Blip-Name festlegen
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Reverse Vending Machine")  -- Name des Blips
        EndTextCommandSetBlipName(blip)
    end
end)