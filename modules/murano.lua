return function(service, method, options)
	local response = _G[service][method](options)
	assert(response.error == nil, to_json({
		service = service,
		method = method,
		options = options,
	}))
	return response
end
