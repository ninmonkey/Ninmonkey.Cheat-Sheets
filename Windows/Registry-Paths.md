# Registry


## Win+X hotkeys

[source](https://www.voidtools.com/support/everything/keyboard_shortcuts/#hotkeys)
`HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced` 

### example: Disable `Win+F`
```yaml
Key: DisabledHotkeys
Value: "F"
```

## Shell Folders

`gi 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders'`

### Example

```powershell
🐒> gi 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' | fl                                                                           
```
```yaml             
Property      : {!Do not use this registry key, AppData, Local AppData, CD Burning…}                                                                           
PSPath        : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders                         
PSParentPath  : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer                                       
PSChildName   : Shell Folders                                                                                                                                  
PSDrive       : HKCU                                                                                                                                           
PSProvider    : Microsoft.PowerShell.Core\Registry                                                                                                             
PSIsContainer : True                                                                                                                                           
SubKeyCount   : 0                                                                                                                                              
View          : Default                                                                                                                                        
Handle        : Microsoft.Win32.SafeHandles.SafeRegistryHandle                                                                                                 
ValueCount    : 31                                                                                                                                             
Name          : HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders                                                             
```                                                                                                                                                        
                                                                                                                                                               
```ps1                                                                                                                                                            
🐒> gi 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' | Get-ItemProperty                                                             
```
```yaml                                                                                                                                                               
!Do not use this registry key          : Use the SHGetFolderPath or SHGetKnownFolderPath function instead                                                      
AppData                                : C:\Users\cppmo_000\AppData\Roaming                                                                                    
Local AppData                          : C:\Users\cppmo_000\AppData\Local                                                                                      
CD Burning                             : C:\Users\cppmo_000\AppData\Local\Microsoft\Windows\Burn\Burn                                                          
{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE} : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Libraries                                                        
My Video                               : C:\Users\cppmo_000\Videos                                                                                             
My Pictures                            : C:\Users\cppmo_000\Pictures                                                                                           
Desktop                                : C:\Users\cppmo_000\Desktop                                                                                            
History                                : C:\Users\cppmo_000\AppData\Local\Microsoft\Windows\History                                                            
NetHood                                : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Network Shortcuts                                                
{56784854-C6CB-462B-8169-88E350ACB882} : C:\Users\cppmo_000\Contacts                                                                                           
{00BCFC5A-ED94-4E48-96A1-3F6217F21990} : C:\Users\cppmo_000\AppData\Local\Microsoft\Windows\RoamingTiles                                                       
Cookies                                : C:\Users\cppmo_000\AppData\Local\Microsoft\Windows\INetCookies                                                        
Favorites                              : C:\Users\cppmo_000\Favorites                                                                                          
SendTo                                 : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\SendTo                                                           
Start Menu                             : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Start Menu                                                       
My Music                               : C:\Users\cppmo_000\Music                                                                                              
Programs                               : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Start Menu\Programs                                              
Recent                                 : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Recent                                                           
PrintHood                              : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Printer Shortcuts                                                
{7D1D3A04-DEBB-4115-95CF-2F29DA2920DA} : C:\Users\cppmo_000\Searches                                                                                           
{374DE290-123F-4565-9164-39C4925E467B} : C:\Users\cppmo_000\Downloads                                                                                          
{A520A1A4-1780-4FF6-BD18-167343C5AF16} : C:\Users\cppmo_000\AppData\LocalLow                                                                                   
Startup                                : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup                                      
Administrative Tools                   : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Administrative Tools                         
Personal                               : C:\Users\cppmo_000\Documents                                                                                          
{BFB9D5E0-C6A9-404C-B2B2-AE6DB6AF4968} : C:\Users\cppmo_000\Links                                                                                              
Cache                                  : C:\Users\cppmo_000\AppData\Local\Microsoft\Windows\INetCache                                                          
Templates                              : C:\Users\cppmo_000\AppData\Roaming\Microsoft\Windows\Templates                                                        
{4C5C32FF-BB9D-43B0-B5B4-2D72E54EAAA4} : C:\Users\cppmo_000\Saved Games                                                                                        
Fonts                                  : C:\WINDOWS\Fonts                                                                                                      
PSPath                                 : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
PSParentPath                           : Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer              
PSChildName                            : Shell Folders                                                                                                         
PSProvider                             : Microsoft.PowerShell.Core\Registry                                                                                    
```

## unsorted

## Uninstall

| var             | Path                                                                        |
| --------------- | --------------------------------------------------------------------------- |
| local_key       | `'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'`             |
| machine_key     | `'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'`             |
| machine_key6432 | `'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'` |