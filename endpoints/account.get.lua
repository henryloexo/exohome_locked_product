--#ENDPOINT GET /account

local M = require('util.lua')
local kv = M.call('Keystore', 'get', {
	key = 'demo',
})

response.message = kv.value
