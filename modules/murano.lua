local M = {}
function M.call(service, method, options)
	local response = _G[service][method](options)
	assert(response.error == nil, to_json({
		service = service,
		method = method,
		options = options,
	}))
	return response
end
return M
