local QBCore = exports['qb-core']:GetCoreObject()

local function isUserAuthorized(source)
    local player = QBCore.Functions.GetPlayer(source)
    if player and (player.PlayerData.job.name == 'police' or player.PlayerData.job.name == 'fire' or player.PlayerData.job.name == 'ambulance') then
        return true
    end
    return false
end

RegisterCommand('startTraining', function(source, args, rawCommand)
    if isUserAuthorized(source) then
        TriggerClientEvent('qb-vrtraining:startSession', source)
    else
        TriggerClientEvent('QBCore:Notify', source, 'You are not authorized to access the training environment.', 'error')
    end
end, false)

RegisterNetEvent('qb-vrtraining:endSession', function()
    local src = source
    if isUserAuthorized(src) then
        TriggerClientEvent('qb-vrtraining:endSession', src)
    end
end)

QBCore.Functions.CreateCallback('qb-vrtraining:getTrainingScenarios', function(source, cb)
    local scenarios = {
        { id = 1, name = "Basic Firefighting", description = "Learn the basics of firefighting techniques." },
        { id = 2, name = "Traffic Accident Response", description = "Respond to a simulated traffic accident." },
        { id = 3, name = "Emergency Medical Response", description = "Practice emergency medical response techniques." }
    }
    cb(scenarios)
end)