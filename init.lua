local email = string.format('%s@%s.demo', math.random(), os.time(os.date('!*t')))
local password = math.random()

local domain = 'exohome.apps.exosite.io'
local endpoint = string.format('api:1/user/%s', email)

local http = Http.put({
	url = string.format('https://%s/%s', domain, endpoint),
	body = to_json({
		password = password,
	}),
})
assert(http.error == nil, 'Failed to create demo account.')

local kv = Keystore.set({
	key = 'demo',
	value = to_json({
		email = email,
		password = password,
	}),
})
assert(kv.error == nil, 'Failed to set demo in Keystore.')
