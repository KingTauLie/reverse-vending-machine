fx_version 'cerulean'
game 'gta5'

author 'TauLie'
description 'Reverse Vending Machine Script'
version '1.0.0'

shared_script 'config.lua'
client_script 'client.lua'
server_script 'server.lua'

files {
    'stream/*.ydr',
    'stream/*.ytd'
}

data_file 'DLC_ITYP_REQUEST' 'stream/as_rv_machine_prop.ytyp'

dependencies {
    'ox_target'
}