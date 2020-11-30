# A simple add system

Just a very simple script. It adds the possibility to publish an ad. The ad is displayed to every player in the server via a notification.

## Modifications

### Change add price
You can simply modify the price of an ad. To do that, you just have to modify the variables called "price" in cl.lua and sv.lua.
```lua
RegisterServerEvent("pub:check_money")
AddEventHandler("pub:check_money", function(text, title)

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local price = 50
```

```lua
function Pub()
    local price = 50
```

### Add money to a society
You simply have to uncomment the 3 following lines in sv.lua:

```lua
TriggerEvent('esx_addonaccount:getSharedAccount', 'society_weazel', function(account)
    account.addMoney(price)
end)
```

### Change location
Simply modify the global called position in cl.lua
```lua
local position = vector3(-1083.1131, -245.848, 37.76)
```

## Pictures

![alt text](https://i.imgur.com/sH1dnqv.png)

![alt text](https://i.imgur.com/CBPHBQ6.png)
