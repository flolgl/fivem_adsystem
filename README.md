# A simple add system

Just a very simple script. It adds the possibility to publish an ad. The ad is displayed to every player in the server via a notification.

## Modifications

### Change add price
You can simply modify the price of an ad. To do that, you just have to modify the variables called "price" in cl.lua and sv.lua.

### Add money to a society
You simply have to uncomment the 3 following lines in sv.lua:

```lua
TriggerEvent('esx_addonaccount:getSharedAccount', 'society_weazel', function(account)
    account.addMoney(price)
end)
```

### Change location
Simply modify the global called position in cl.lua


## Pictures


