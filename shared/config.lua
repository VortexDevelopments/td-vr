-- Configuration settings for the virtual reality training environment

Config = {}

-- Role permissions
Config.AllowedRoles = {
    "police",
    "fire",
    "ambulance"
}

-- Training scenarios
Config.TrainingScenarios = {
    {
        name = "Traffic Stop",
        description = "Practice conducting a traffic stop with a suspect.",
        duration = 15 -- duration in minutes
    },
    {
        name = "Fire Rescue",
        description = "Simulate a fire rescue operation.",
        duration = 20
    },
    {
        name = "Medical Emergency",
        description = "Respond to a medical emergency and provide first aid.",
        duration = 10
    }
}

-- Other shared constants
Config.MaxParticipants = 10
Config.VRTrainingLocation = vector3(100.0, 100.0, 100.0) -- Example coordinates for the VR training location
Config.TrainingCooldown = 5 -- Cooldown in minutes between training sessions