fx_version 'cerulean'
games { 'gta5' }

author 'Floh'
description 'Simple "peacetime" script for RP servers which disables firing and shows status.'
version '1.0.1'

ui_page "ui/ui.html"

files {
	"ui/ui.html",
	"ui/ui.js",
	"ui/ui.css",
}

client_scripts {
	'client.lua',
}

server_scripts {
	'server.lua',
}

dependencies {
    '/onesync',  -- requires state awareness to be enabled
}