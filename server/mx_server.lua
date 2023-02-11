Config = {}


CreateThread(function()
    while true do
        Wait(Config.DeleteTimer * 60000)
        TriggerClientEvent('ox_lib:notify', -1, {title = 'SERVER', description = _U('5minute'), icon= 'ban', position = 'top'})
        Wait(300000)
        TriggerClientEvent('ox_lib:notify', -1, {title = 'SERVER', description = _U('1minute'), icon= 'ban', position = 'top'})
        Wait(60000)
        TriggerClientEvent('ox_lib:notify', -1, {title = 'SERVER', description = _U('10seconds'), icon= 'ban', position = 'top'})
        Wait(10000)
        TriggerClientEvent('ox_lib:notify', -1, {title = 'SERVER', description = _U('5seconds'), icon= 'ban', position = 'top'})
        Wait(5000)

        for i, veh in pairs(GetAllVehicles()) do
            if HasVehicleBeenOwnedByPlayer(veh) then
                if not isVehicleOccupied(veh) then
                    DeleteEntity(veh)
                end
            end
        end
        TriggerClientEvent('ox_lib:notify', -1, {title = 'SERVER', description = _U('done'), icon= 'ban', position = 'top'})
    end
end)



function isVehicleOccupied(veh)
    for seat = -1, 6 do
        if GetPedInVehicleSeat(veh, seat) ~= 0 then
            return true
        end
    end
    return false
end


print('^5Made By Mxthess^7: ^1'..GetCurrentResourceName()..'^7 started ^2successfully^7...') 