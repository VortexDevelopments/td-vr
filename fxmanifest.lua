version '1.0.0'

description 'Virtual Reality Training Environment for Police, Fire, and Ambulance Roles'

author 'Tribal Developments' 

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

shared_script 'shared/config.lua'

dependency 'qb-core'