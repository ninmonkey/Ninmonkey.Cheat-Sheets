using namespace System.Collections.Generic

& {
    'Exporting man pages...'
    $Paths = @{
        ExportPath = Join-Path $PSScriptRoot 'Manpage'
    }
    # commands that support '--help'
    $CommandList_help = @(
        'rg'
        'gh'
        'curl'
        'python'
        'pip'
        # 'code'
        # 'code-insiders'
        'dotnet'
    )

    Write-Warning "Nyi because of bug: 'code'"
    # Not sure if this is a a bug or not. currently this creats a new window:
    #   Invoke-NativeCommand 'code' -ArgumentList @('--help')

    # commands that support '/?'
    $CommandList_win = @(

    )

    # nested commands or ones that do not use --help or /?

    $CommandList_special = @(
        'gh --help'
        'gh gist --help'
        'gh gist list --help'
    )

    $ExportedFiles = [list[string]]::new()


    foreach ($Command in $CommandList_help) {
        $manPath = Join-Path -Path $Paths.ExportPath "$Command.manpage.txt"

        Label 'Invoking' "$Command --help" | Write-Host
        Label 'dest' $manPath | Write-Host

        try {
            Invoke-NativeCommand $Command -ArgumentList @('--help') -ea Stop
            | Set-Content $manPath -Encoding utf8

            # ($manPath | Get-Item)
            $ExportedFiles.add( $manPath )

            Label 'Wrote' | Write-Host
            Get-Item $manPath | Format-Table Name, LastWriteTime
            | Out-String |  Write-Host
        } catch {
            $manPath | Label 'Failed'
        }



        # | Set-Content $manPath
        # rg --help | Set-Content $destPath -Encoding utf8

    }

    $CommandList_win | ForEach-Object {
        Write-Warning "Get help using '/?' is NYI"
    }
    $CommandList_special| ForEach-Object {
        Write-Warning "Get help using '/?' is NYI"
        Label '-Whatif: Running' $_
    }

    # $destPath = "$Env:UserProfile\Documents\2021\My_Github\Ninmonkey.Cheat-Sheets\Apps\CommandLine\Manpage\$name.manpage.txt"

    h1 'Exported files'
    $ExportedFiles

}