# Home Automation Micro Vertical Locked Solution Placeholder Template
An application template to stage as a placeholder for a locked solution.

## Overview
- This template should be used when a customer has requested a locked solution but custom configuration/management is required before their application can be made available to them.
- Individuals listed in the "authors" section of `murano.yaml` will be automatically invited to the business that has requested the locked solution.
- The placeholder template includes static assets that will appear at the user's application URL to indicate that custom setup is being performed.
- A "status" endpoint is exposed from the config service in order to provide proper user feedback within the Murano UI.
- This template should be replaced with the live locked solution instance after custom configuration is complete.

## Status endpoint
- Upon request of a locked solution and instantiation of a placeholder application, the status endpoint will return the following object:
```
{
  status: "requested",
  disabled: true
}
```

- The Murano UI (Yeti) uses these two values on the Solution List page:
  - The status is displayed directly on the page
  - The "disabled" boolean is used to style the solution item properly (greyed out when disabled)
  

- After replacing the placeholder template with the actual locked solution application, please continue to utilize this status endpoint but change the response object accordingly:
see `'/services/config.lua'`
```
{
  id:"...",
  application_type: "rcm|hamv"
  application_version: "1.3.1",
  status:"online|offline|requested|degraded",
  disabled: false,
  capabilities:[
      {"title":"User",
      "description":"User profile and auth functionality",
      "status":"online|offline|needs config",
      [ "data":[{"Total Users":4494}, {...}] ]
      }
  ]
}
```

## Static assets
The static assets provided here are simply to be used as a placeholder for the actual locked solution until configuration is complete.
