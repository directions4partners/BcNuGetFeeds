# NuGet Feeds for Business Central Apps
This repository contains a list of all public or private NuGet feeds for Business Central apps.

| Owner | Public | Content | View feed | NuGetServerUrl | Fingerprints | Contact |
|---|:--:|---|:--:|:--:|:--:|:--:|
| {{owner}} | {{public}} | {{description}} | [View feed]({{viewfeed}) | [TrustedNuGetFeed]({{trustedNuGetFeed}}) | [Contact](mailto:{{contact}}) |

## Using public GitHub packages NuGet feeds
GitHub packages NuGet feeds can be public, but you still need to provide a NuGet token with read:packages permission in order to use the feed. This can be achieved by creating a personal access token with read:packages permissions as the only thing. This PAT will not have access to anything, except search and download your private NuGet packages or public NuGet packages. You can also use your local token (gh auth token) if you add the read:packages scope to the scopes when using gh auth login.

## 
