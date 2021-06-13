using namespace System.Collections.Generic

function _dotfiles_Generate-Manpage {
    <#
    .synopsis
        auto-export and save manpages.
    .description
        correct verb might be 'new' or 'write' ?
    .notes
        future:
            Task runs automatically on a git pull?
    #>
    [CmdletBinding()]
    param (
     
    )
    'Exporting man pages...'
    $Paths = @{
        ExportPath = Join-Path $PSScriptRoot 'Manpage'
    }
    # commands that support '--help'
    $CommandList_help = @(
        'curl'
        'dotnet'
        'gh'
        'ipconfig'
        'pip'
        'python'
        'rg'
        # 'code-insiders'
        # 'code'
    ) | Sort-Object -Unique

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
    $FailedList = [list[string]]::new()


    # Attempt to output --version as a header, then --help as the content
    foreach ($Command in $CommandList_help) {
        $manPath = Join-Path -Path $Paths.ExportPath "$Command.manpage.txt"

        Label 'Invoking' "$Command --help" | Write-Information
        Label 'dest' $manPath | Write-Information

        function _exportWithHeader {
            $bodyText = ''
            $headerText = 'Generated: {0}' -f (Get-Date).tostring('u')
            $headerText += ", PS: $($PSVersionTable.PSVersion)"
            # header is optional
            try {

                $headerText += "`nVersion: "
                $headerText += Invoke-NativeCommand $Command -ArgumentList @('--version') -ea Stop
                $binPath = Get-NativeCommand $Command
                | Get-Item | ForEach-Object fullname

                $headerText += "`nPath: $binPath"
                $headerText += "`n-----`n"
                $ExportedFiles.Add( "[ OK] '$Command': --version")
            }
            catch {
                $FailedList.Add( "[Err] '$Command': --version")
            }
            try {
                $bodyText += Invoke-NativeCommand $Command -ArgumentList @('--help') -ea Stop | Join-String -sep "`n"

                $ExportedFiles.Add( "[ OK] '$Command': --help")
            }
            catch {
                $FailedList.Add( "[Err] '$Command' --help")
                # $FailedList.Add( "--version failed: '$Command'"
            }

            # $headerText, $bodyText | Join-String -sep ''
            # | Set-Content $manPath -Encoding utf8
            $headerText, $bodyText
            | Join-String -sep "`n"
            | Set-Content $manPath -Encoding utf8

            Label 'Wrote' | Write-Information
            Get-Item $manPath | Format-Table Name, LastWriteTime
            | Out-String |  Write-Information

        }
        _exportWithHeader

    }

    $CommandList_win | ForEach-Object {
        Write-Warning "Get help using '/?' is NYI"
    }
    $CommandList_special | ForEach-Object {
        Write-Warning "Get help using '/?' is NYI"
        Label '-Whatif: Running' $_
    }

    # $destPath = "$Env:UserProfile\Documents\2021\My_Github\Ninmonkey.Cheat-Sheets\Apps\CommandLine\Manpage\$name.manpage.txt"

    h1 'Exported files'
    $ExportedFiles

    h1 'Failed files'
    $FailedList
}

_dotfiles_Generate-Manpage -Verbose -infa Continue