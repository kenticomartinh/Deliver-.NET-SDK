param(
    [string] $OutputFolderPath = 'C:\LocalNugetFeed'
)

$nugetFilePath = Resolve-Path .\.nuget\nuget.exe


function Ensure-Output-Path() {
    if (-Not (Test-Path $OutputFolderPath))
    {
        New-Item -ItemType directory -Path $OutputFolderPath
    }
}


function Create-Packages() {
    foreach ($projectFile in Get-ChildItem -Include *.csproj -Recurse)
    {
        
	    &$nugetFilePath pack $projectFile -Build -Properties Configuration=Debug -OutputDirectory $OutputFolderPath | Write-Verbose
    }
}


Ensure-Output-Path
Create-Packages