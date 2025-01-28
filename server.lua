ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('reverse_vending:process')
AddEventHandler('reverse_vending:process', function(count)
    local xPlayer = ESX.GetPlayerFromId(source)
    local bottleCount = xPlayer.getInventoryItem(Config.BottleItem).count

    if bottleCount >= count then
        if Config.RewardType == "money" then
            -- Belohnung in Geld
            local reward = count * Config.RewardPerBottle
            xPlayer.removeInventoryItem(Config.BottleItem, count)
            xPlayer.addMoney(reward)

            TriggerClientEvent('esx:showNotification', source, "Du hast " .. count .. " Pfandflaschen abgegeben und $" .. reward .. " erhalten.")
        elseif Config.RewardType == "item" then
            -- Belohnung in Item
            local rewardItem = count  -- 1 Flasche = 1 Item
            xPlayer.removeInventoryItem(Config.BottleItem, count)
            xPlayer.addInventoryItem(Config.RewardItem, rewardItem)

            TriggerClientEvent('esx:showNotification', source, "Du hast " .. count .. " Pfandflaschen abgegeben und " .. rewardItem .. "x " .. Config.RewardItem .. " erhalten.")
        else
            TriggerClientEvent('esx:showNotification', source, "Fehler: Ungültige Belohnungsart in der Config.")
        end
    else
        TriggerClientEvent('esx:showNotification', source, "Du hast nicht genügend Pfandflaschen.")
    end
end)
