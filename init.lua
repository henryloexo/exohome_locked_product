local M = require('murano.lua')
--[[

local email = string.format('demoUser%s%d@exohome.demo', os.time(os.date('!*t')), math.random(999))
local password = math.random(99999999)

local registerAccountRequest = {
	url = string.format('https://%s%s%s', 'qimat1.apps.exosite-staging.io', '/api:1/demoUser/', email),
	method = 'put',
	body = to_json({
		password = password,
	}),
	headers = {
		['Content-Type'] = 'application/json',
	},
}
M('Http', 'request', registerAccountRequest)

local provisionDeviceRequest = {
	url = string.format('%s.m2.exosite-staging.io%s', 'gflhw3hgp8g00000', '/provision/activate'),
	method = 'post',
	body = 'id=asdf',
	headers = {
		['Content-Type'] = 'application/x-www-form-urlencoded; charset=utf-8',
	},
}
local http = M('Http', 'request', provisionDeviceRequest)

local setKvDemoOptions = {
	key = 'demo',
	value = to_json({
		email = email,
		password = password,
		token = http.body,
	}),
}
M('Keystore', 'set', setKvDemoOptions)
]]
