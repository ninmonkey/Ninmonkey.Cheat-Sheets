# Best results for saving man page

```powershell
$name = 'rg'
$destPath = "$Env:UserProfile\Documents\2021\My_Github\Ninmonkey.Cheat-Sheets\Apps\CommandLine\Manpage\$name.manpage.txt"
rg --help | Set-Content $destPath -Encoding utf8
```