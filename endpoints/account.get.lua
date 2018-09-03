--#ENDPOINT GET /account

local kv = Keystore.get({
	key = 'demo',
})
assert(kv.error == nil, 'Failed to get demo from Keystore.')

response.message = kv.value
