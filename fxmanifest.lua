--[[ FX Information ]]--
fx_version   'cerulean'
game         'gta5'

--[[ FX Information ]]--
name         'ncs_job'
author       'NCS Team'

--[[ Manifest ]]--
dependencies {
	'ncs_core'
}

shared_scripts {
	'loadNCS.lua',
    'config.lua',
    'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}