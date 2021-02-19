fx_version 'cerulean'
games { 'gta5' }

-- Tell FiveM's NUI system what the main html file is for this resource
ui_page "ui/ui.html"

-- Add the files that need to be used/loaded
files {
	"ui/ui.html",
	"ui/ui.js",
	"ui/ui.css",
}

-- Initiate the clientside lua script
client_scripts {
	'client.lua',
}

server_scripts {
	'server.lua',
}
