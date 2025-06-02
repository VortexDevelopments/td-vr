-- Client-side logic for the virtual reality training environment
local isInVRTraining = false

Config = {}

Config.AllowedJobs = {
    'police',
    'ambulance',
    'fire'
}

-- Function to start VR training session
function startVRTraining()
    if isInVRTraining then
        return
    end

    isInVRTraining = true
    -- Trigger VR training UI and logic here
    TriggerEvent('vrtraining:openUI')
end

-- Function to end VR training session
function endVRTraining()
    if not isInVRTraining then
        return
    end

    isInVRTraining = false
    -- Close VR training UI and cleanup
    TriggerEvent('vrtraining:closeUI')
end

-- Event to handle user interactions
RegisterNetEvent('vrtraining:startTraining')
AddEventHandler('vrtraining:startTraining', function()
    startVRTraining()
end)

RegisterNetEvent('vrtraining:endTraining')
AddEventHandler('vrtraining:endTraining', function()
    endVRTraining()
end)

-- Check user role and allow access to VR training
AddEventHandler('playerSpawned', function()
    local playerData = QBCore.Functions.GetPlayerData()
    if playerData.job.name == 'police' or playerData.job.name == 'fire' or playerData.job.name == 'ambulance' then
        -- Allow access to VR training
        TriggerEvent('vrtraining:allowAccess')
    else
        -- Deny access to VR training
        TriggerEvent('vrtraining:denyAccess')
    end
end)

-- UI handling (placeholder functions)
RegisterNetEvent('vrtraining:openUI')
AddEventHandler('vrtraining:openUI', function()
    -- Code to open the VR training UI
end)

RegisterNetEvent('vrtraining:closeUI')
AddEventHandler('vrtraining:closeUI', function()
    -- Code to close the VR training UI
end)