--#ENDPOINT GET /account

local M = require('murano.lua')
local kv = M('Keystore', 'get', {
	key = 'demo',
})

response.message = kv.value
