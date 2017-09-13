Function Main
{
    begin
    {
        $ErrorActionPreference = 'stop'

        $Target  = 'source'
        $Source  = '..'
        $OutName = 'Akinoh XVM Config'

        $Includes = '*.*'
        $Excludes = $null

        if (-not $(Test-Path $(Join-Path $Source $Target)))
        {
            throw 'The source directory is not recognized. Please check that the current directory is correct and try again.'
        }
    }

    end
    {
        try
        {
            # clean up current directory
            Get-ChildItem -Directory | Remove-Item -Recurse
            Get-ChildItem | ? { $_.Extension -eq '.zip' } | Remove-Item

            # copy filtered files
            Copy-FilteredFiles -Path $(Join-Path $Source $Target) -Destination '.' -Includes $Includes -Excludes $Excludes

            # get version info
            # version info is read from '@xvm.xc'
            $MainConfig = $(Get-ChildItem -Recurse -File | ? Name -eq '@xvm.xc')
            $ModMinVersion = $(Get-Content -Path $MainConfig.FullName -Encoding UTF8 | Select-String '"modMinVersion"') -replace '^.*"modMinVersion": "([\d\.]+).*$','$1'
            $ConfigVersion = $(Get-Content -Path $MainConfig.FullName -Encoding UTF8 | Select-String '"date"') -replace '^.*"date": "[\d/]+ Version (.+)".*$','$1'

            # rename target
            $NewTitle = $OutName + ' v' + $ConfigVersion + ' for XVM ' + $ModMinVersion
            $NewName  = $NewTitle -replace ' ','_'
            Rename-Item -NewName $NewName -Path $(Join-Path $(Get-Location) $Target)

            # compress to zip
            Compress-Archive -Path $NewName -DestinationPath $($NewName + '.zip') -Force

            # out result
            $NewTitle | clip
        }
        catch
        {
            throw $_
        }
    }
}

Function Copy-FilteredFiles
{
    [CmdletBinding()]
    param
    (
        [parameter(
            Mandatory = $true,
            position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [string]
        $Path,

        [parameter(
            Mandatory = $true,
            position = 1,
            ValueFromPipelineByPropertyName = $true)]
        [string]
        $Destination,

        [parameter(
            Mandatory = $true,
            position = 2,
            ValueFromPipelineByPropertyName = $true)]
        [string[]]
        $Includes,

        [parameter(
            Mandatory = $false,
            position = 3,
            ValueFromPipelineByPropertyName = $true)]
        [string[]]
        $Excludes
    )

    process
    {
        Foreach ($Include in $Includes)
        {
            Copy-Item -Path $Path -Destination $Destination -Force -Recurse -Filter $Include
        }
    }

    end
    {
        # remove excludes
        Foreach ($Exclude in $Excludes)
        {
            Get-ChildItem -Path $Destination -Recurse -File | ? Name -Like $Exclude | Remove-Item
        }
    }
}

Main

## EOF ##