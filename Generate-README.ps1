# Generate-README.ps1
# This script generates README.md from README.template.md based on BcNuGetFeeds.json

param(
    [string]$RepoUrl = "https://github.com/Directions4partners/BcNuGetFeeds"
)

$scriptPath = $PSScriptRoot
$jsonPath = Join-Path $scriptPath "BcNuGetFeeds.json"
$templatePath = Join-Path $scriptPath "README.template.md"
$outputPath = Join-Path $scriptPath "README.md"

# Read the JSON file
$jsonContent = Get-Content -Path $jsonPath -Raw
$feeds = $jsonContent | ConvertFrom-Json

# Read the JSON file as lines to calculate line numbers for each entry
$jsonLines = Get-Content -Path $jsonPath

# Find the line number for each entry by searching for unique identifiers
function Get-EntryLineNumber {
    param(
        [string[]]$Lines,
        [string]$Name,
        [string]$Url
    )
    
    for ($i = 0; $i -lt $Lines.Count; $i++) {
        # Look for the name field that matches this entry
        if ($Lines[$i] -match '"name":\s*"' + [regex]::Escape($Name) + '"') {
            # Go back to find the opening brace of this object
            for ($j = $i; $j -ge 0; $j--) {
                if ($Lines[$j] -match '^\s*\{') {
                    return $j + 1  # Return 1-based line number
                }
            }
            return $i + 1
        }
    }
    
    return 1
}

# Sort feeds by owner, then by name
$sortedFeeds = $feeds | Sort-Object -Property owner, name

# Generate table rows
$tableRows = @()
foreach ($feed in $sortedFeeds) {
    $lineNumber = Get-EntryLineNumber -Lines $jsonLines -Name $feed.name -Url $feed.url
    $viewJsonUrl = "$RepoUrl/blob/main/BcNuGetFeeds.json#L$lineNumber"
    
    $publicIcon = if ($feed.public) { "✅" } else { "❌" }
    
    # Handle optional contact field
    $contactCell = if ($feed.contact) { "[Contact](mailto:$($feed.contact))" } else { "-" }
    
    # Build the table row
    $row = "| $($feed.owner) | $($feed.name) | $publicIcon | $($feed.description) | [View feed]($($feed.viewfeed)) | [View json]($viewJsonUrl) | $contactCell |"
    $tableRows += $row
}

# Read template
$template = Get-Content -Path $templatePath -Raw

# Replace the placeholder with the generated table rows
$readme = $template -replace '\{\{TABLE_ROWS\}\}', ($tableRows -join "`n")

# Write output
$readme | Set-Content -Path $outputPath -NoNewline

Write-Host "README.md generated successfully with $($sortedFeeds.Count) feed entries."
