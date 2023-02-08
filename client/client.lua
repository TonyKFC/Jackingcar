ESX = exports["es_extended"]:getSharedObject()  


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
     
		local playerPed = PlayerPedId()
		local playerCoords = GetEntityCoords(playerPed)


		if ( IsPedJacking(playerPed))  then

			Citizen.Wait(3000)
			local vehicle = GetVehiclePedIsIn(playerPed, true)
			FreezeEntityPosition(vehicle, true)
            local a = tr
		 
			 
        end
    end

end)




exports("hotline", function(data, slot)

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local vehicle = GetVehiclePedIsIn(playerPed, true) 
 if  IsEntityPositionFrozen(vehicle,true) then
    if IsPedInAnyVehicle(playerPed,  false) then
 
       local playerPed = PlayerPedId()
       local playerCoords = GetEntityCoords(playerPed)
       local vehicle = GetVehiclePedIsIn(playerPed, true)
       local success = lib.skillCheck({'easy', 'easy', 'easy','easy','easy',{areaSize = 25, speedMultiplier = 1}, 'easy'})
       exports.ox_inventory:useItem(data)
            if  success  then 
                FreezeEntityPosition(vehicle, false)
                TriggerEvent('esx_locksystem:add', localVehId, localVehPlateTest,localVehPlate,localVehLockStatus)
                lib.notify({
                    title = '开锁器',
                    description = '获得车钥匙,请按U',
                    type = 'success'
                })

            else
                lib.notify({
                    title = '开锁器',
                    description = '开锁失败',
                    type = 'error'
                })
            end
    
    else
            lib.notify({
            title = '开锁器',
            description = '必须在车内使用',
            type = 'error'
            })
    end
else 
    lib.notify({
        title = '开锁器',
        description = '现在无法使用',
        type = 'error'
        })
end       
    
end)