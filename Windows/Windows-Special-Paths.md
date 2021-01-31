# Windows paths and /w Env Vars



## Users
userprofile, appdata, etc



## Misc.

| Name         | Path                                                                       |
| ------------ | -------------------------------------------------------------------------- |
| Taskbar Pins | `"%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"` |
| Quick Launch | `"%AppData%\Microsoft\Internet Explorer\Quick Launch"`                     |

# Snippets

## Expanding Env Vars

using `[Environment]::ExpandEnvironmentVariables`

```powershell
[Environment]::ExpandEnvironmentVariables('%AppData%\Microsoft')
| Should -Be "$env:AppData\Microsoft" # Good
```

## AutoExport Env Vars

```powershell
Get-ChildItem env: | select Key, value | ConvertTo-Json
```

## Get System 'ID' type info

```powershell
$PropList = 'CsCaption', 'CsDNSHostName', 'CsDomain', 'CsPrimaryOwnerName', 'LogonServer', 'Os*memory*', 'OsBootDevice', 'OsBuildNumber', 'OsCodeSet', 'OsType', 'OsVersion', 'WindowsBuild*', 'WindowsCurrentVersion', 'WindowsEditionId', 'WindowsProductName', 'WindowsRegisteredOwner', 'WindowsVersion'
Get-ComputerInfo | select -Property $PropList
```