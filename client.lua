
local blips = {}
local PromptGroup = GetRandomIntInRange(0, 0xffffff)
local GuarmaPromptGroup = GetRandomIntInRange(0, 0xffffff)

local playerPedId
local playerCoords


function SetupUseDoorPrompt()
    Citizen.CreateThread(function()
        local str = 'Use Door'
        UseDoorPrompt = PromptRegisterBegin()
        PromptSetControlAction(UseDoorPrompt, Config.Key)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(UseDoorPrompt, str)
        PromptSetEnabled(UseDoorPrompt, true)
        PromptSetVisible(UseDoorPrompt, true)
        PromptSetHoldMode(UseDoorPrompt, true)
        PromptSetGroup(UseDoorPrompt, PromptGroup)
        PromptRegisterEnd(UseDoorPrompt)
    end)
end

function SetupTravelToGuarmaPrompt()
	Citizen.CreateThread(function()
		local str = 'Hop on Ship'
		HopOnShipPrompt = PromptRegisterBegin()
		PromptSetControlAction(HopOnShipPrompt, Config.Key)
		str = CreateVarString(10, 'LITERAL_STRING', str)
		PromptSetText(HopOnShipPrompt, str)
		PromptSetEnabled(HopOnShipPrompt, true)
		PromptSetVisible(HopOnShipPrompt, true)
		PromptSetHoldMode(HopOnShipPrompt, true)
		PromptSetGroup(HopOnShipPrompt, GuarmaPromptGroup)
		PromptRegisterEnd(HopOnShipPrompt)
	end)
end

Citizen.CreateThread(function()
	while true do
	
        Citizen.Wait(500)
	
		playerPedId = PlayerPedId()
        playerCoords = GetEntityCoords(playerPedId)
	
	end
end)


Citizen.CreateThread(function()

    SetupUseDoorPrompt()
	SetupTravelToGuarmaPrompt()
	
end)


Citizen.CreateThread(function()
	while true do
	
		local sleep = 100
		
		if playerCoords then

			for k,v in pairs(Config.Places) do

				-- Check entrance
				local dist = #(playerCoords - getVector3(v["EnterPrompt"]))
				if dist < Config.DistanceForPrompt then
					
					sleep = 1

					if k == "GuarmaTravel" and Config.Guarma.Enabled == true then
						local label  = CreateVarString(10, "LITERAL_STRING", v["PromptLabel"])
						PromptSetActiveGroupThisFrame(GuarmaPromptGroup, label)
						if PromptHasHoldModeCompleted(HopOnShipPrompt) then
							
							teleport(getVector3(v["EnterSpawn"]), v["EnterSpawn"].w)
							enableGuarma()
							Wait(3000)

						end
					else
						local label  = CreateVarString(10, "LITERAL_STRING", v["PromptLabel"])
						PromptSetActiveGroupThisFrame(PromptGroup, label)
						if PromptHasHoldModeCompleted(UseDoorPrompt) then
							
							teleport(getVector3(v["EnterSpawn"]), v["EnterSpawn"].w)
							Wait(3000)

						end
					end
					
				end
				
				-- Check exit
				local dist = #(playerCoords - getVector3(v["ExitPrompt"]))
				if dist < Config.DistanceForPrompt then
					
					sleep = 1
					if k == "GuarmaTravel" and Config.Guarma.Enabled == true then
						local label  = CreateVarString(10, "LITERAL_STRING", v["PromptLabel"])
						PromptSetActiveGroupThisFrame(GuarmaPromptGroup, label)
						if PromptHasHoldModeCompleted(HopOnShipPrompt) then

							teleport(getVector3(v["ExitSpawn"]), v["ExitSpawn"].w)
							disableGuarma()
							Wait(3000)

						end
					else
						local label  = CreateVarString(10, "LITERAL_STRING", v["PromptLabel"])
						PromptSetActiveGroupThisFrame(PromptGroup, label)
						if PromptHasHoldModeCompleted(UseDoorPrompt) then

							teleport(getVector3(v["ExitSpawn"]), v["ExitSpawn"].w)
							Wait(3000)

						end
					end
					
				end

			end
		
		end
		
		Wait(sleep)
		
	end
end)

function teleport(vec3, heading)
	DoScreenFadeOut(1000)
	Wait(1000)
	
	SetEntityVisible(playerPedId, false)
	
	SetEntityCoords(playerPedId, vec3)
	SetEntityHeading(playerPedId, heading)
	
	Wait(1000)
	
	SetEntityVisible(playerPedId, true)
	
	DoScreenFadeIn(1000)
	Wait(1000)
	
end


function getVector3(vec)
	return vector3(vec.x, vec.y, vec.z)
end

Citizen.CreateThread(function()
	for k,v in pairs(Config.Places) do
		if v.UseBlip == true then
			blips[k] = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, v.EnterPrompt)
			SetBlipSprite(blips[k], v.BlipSprite, 1)
			Citizen.InvokeNative(0x9CB1A1623062F402, blips[k], v.PromptLabel)
		end
	end
end)

RegisterNetEvent("rainbow_teleport:CheckAndUpdateForGuarma")
AddEventHandler("rainbow_teleport:CheckAndUpdateForGuarma", function()

	if exports["vorp_zonenotify"]:isInGuarma() then
		print("in guarma")
		enableGuarma()
	else
		disableGuarma()
	end
end)

function enableGuarma()
	SetMinimapZone(`guarma`)
	SetWorldWaterType(1)
	SetGuarmaWorldhorizonActive(true)
end

function disableGuarma()
	SetMinimapZone(`world`)
	SetWorldWaterType(0)
	SetGuarmaWorldhorizonActive(false)
end


AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
		for k,v in pairs(Config.Places) do
			if v.UseBlip == true and blips[k] then
				RemoveBlip(blips[k])
			end
		end
    end
end)