# NuGet Feeds for Business Central Apps
This repository contains a list of all public or private NuGet feeds for Business Central apps.

If the feed is private, the contact column contains the email address to contact for getting access.

| Owner | Public | Content | View feed | View json | Contact |
|---|:--:|---|:--:|:--:|:--:|
{{TABLE_ROWS}}

## Contributing

> **⚠️ Important:**  
> Please do not include any information, which you are not allowed to share

If you are aware of NuGet feeds, which should be in this list, please create a PR, adding the Business Central NuGet feed to BcNuGetFeeds.json in the following format:

```json
    {
        "owner": "Legal entity owning the NuGet feed",
        "public": true,
        "description": "Feed description",
        "contact": "contact email (optional if public feed)",
        "viewfeed": "URL where you can view the feed content",
        "url": "NuGet server Url",
        "patterns": [
            "Array of patterns (optional)"
        ],
        "fingerprints": [
            "Array of fingerprints (optional)"
        ]
    }
```

