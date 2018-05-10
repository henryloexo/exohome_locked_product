--#EVENT config status
-- this will return a default json payload that passes healthcheck endpoint validation

--[[
Upon successful install of the application, this enpoint should return a payload that
matches the following schema:

{
	"Application":{
		id:"...",
		application_type: "rcm|hamv"
		application_version: "1.3.1",
		status:"online|offline|pending|degraded",
		capabilities:[
		   {"title":"User",
       "description":"User profile and auth functionality",
       "status":"online|offline|needs config",
       [ "data":[{"Total Users":4494}, {...}] ]
       }
		]
	}
}

--]]

local JSONreply = {}
JSONreply.status = "pending"
return JSONreply
