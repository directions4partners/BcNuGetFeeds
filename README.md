# NuGet Feeds for Business Central Apps
This repository contains a list of all public or private NuGet feeds for Business Central apps.

| Owner | Public | Content | View feed | View json | Contact |
|---|:--:|---|:--:|:--:|:--:|
| Directions for Partners | ✅ | This feed contains all NuGet packages created by repositories in the Directions4partners organization | [View feed](https://github.com/orgs/directions4partners/packages) | [View json](https://github.com/directions4partners/BcNuGetFeeds/blob/main/BcNuGetFeeds.json#L2) | [Contact](mailto:freddy@directions4partners.com) |

## Contributing
Please create a PR, adding your Business Central NuGet feeds to BcNuGetFeeds.json in the following format:

```json
    {
        "owner": "Legal entity owning the NuGet feed",
        "public": true,
        "description": "Feed description",
        "contact": "contact email",
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
