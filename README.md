# NuGet Feeds for Business Central Apps
This repository contains a list of all (known) public or private NuGet feeds for Business Central apps.

If the feed is private, the contact column contains the email address to contact for getting access.

| Owner | Name | Public | Content | View feed | View json | Contact |
|---|---|:--:|---|:--:|:--:|:--:|
| Directions for Partners | directions4partners | ✅ | This feed contains all NuGet packages created by repositories in the Directions4partners organization | [View feed](https://github.com/orgs/directions4partners/packages) | [View json](https://github.com/directions4partners/BcNuGetFeeds/blob/main/BcNuGetFeeds.json#L2) | [Contact](mailto:freddy@directions4partners.com) |
| Microsoft | AppSourceSymbols | ✅ | This feed contains NuGet packages with symbols for all AppSource Apps. | [View feed](https://dev.azure.com/dynamicssmb2/DynamicsBCPublicFeeds/_artifacts/feed/AppSourceSymbols) | [View json](https://github.com/directions4partners/BcNuGetFeeds/blob/main/BcNuGetFeeds.json#L15) | - |
| Microsoft | MSApps | ✅ | This feed contains NuGet packages for all Microsoft apps. | [View feed](https://dev.azure.com/dynamicssmb2/DynamicsBCPublicFeeds/_artifacts/feed/MSApps) | [View json](https://github.com/directions4partners/BcNuGetFeeds/blob/main/BcNuGetFeeds.json#L29) | - |
| Microsoft | MSSymbols | ✅ | This feed contains NuGet packages with symbols for all Microsoft apps. | [View feed](https://dev.azure.com/dynamicssmb2/DynamicsBCPublicFeeds/_artifacts/feed/MSSymbols) | [View json](https://github.com/directions4partners/BcNuGetFeeds/blob/main/BcNuGetFeeds.json#L43) | - |

## Using
Please find information about how to use NuGet feeds in AL-Go for GitHub [here](./AL-Go.md).

## Contributing

> **⚠️ Important:**  
> Please do not include any information, which you are not allowed to share

If you are aware of NuGet feeds, which should be in this list, please create a PR on https://github.com/directions4partners/BcNuGetFeeds, adding the Business Central NuGet feed to BcNuGetFeeds.json in the following format:

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

