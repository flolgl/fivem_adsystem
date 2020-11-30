ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("pub:check_money")
AddEventHandler("pub:check_money", function(text, title)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 50

    if xPlayer.getAccount('bank').money >= price then
        xPlayer.removeAccountMoney('bank', price)
        TriggerClientEvent('pub:notif', _source, "Paiement accepté", 25)
        TriggerClientEvent('pub:sendpub', -1, text, title)
        --[[
        /*  * Uncomment the 3 lines under this one if you want to add money the money a society
            * You could also add your log event here
        */

        TriggerEvent('esx_addonaccount:getSharedAccount', 'society_weazel', function(account)
            account.addMoney(price)
        end)
        --]] 
    else
        TriggerClientEvent('pub:notif', _source, "Paiement refusé", 208)
    end


end)