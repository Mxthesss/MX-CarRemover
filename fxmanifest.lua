fx_version 'cerulean'
game 'gta5'

author 'Mxthess'
description 'MX-CarRemover'
version '1.0.0'

shared_script {
  'mx_config.lua'
} 

server_script {
  'server/mx_server.lua',
  '@es_extended/locale.lua',
  '@ox_lib/init.lua',
  'mx_config.lua',
  'locales/en.lua',
  'locales/cs.lua'
} 

lua54 'yes'