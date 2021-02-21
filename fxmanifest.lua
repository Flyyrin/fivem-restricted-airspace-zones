fx_version 'adamant'
game 'gta5'

author 'Flyyrin'
description 'Set Restricted Airspace Zones'
version '1.0.0'

ui_page 'html/ui.html'

client_script {
  './client/client.lua',
  'config.lua',
  './client/functions.lua',
  
}

files {
  'html/*',
  'html/sounds/*.ogg'
}