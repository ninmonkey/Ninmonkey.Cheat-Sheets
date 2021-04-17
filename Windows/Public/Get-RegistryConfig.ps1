Write-Warning 'Todo: Convert to a mini module'

$RegistyPaths = @{

}

$RegistryConfig = @(
    @{
        ItemPath      = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
        ItemPropName  = 'JumpListItems_Maximum'
        CustomDefault = 30

    }
)


# $i = gi $RegistryConfig[0].ItemPath
$i = $RegistryConfig[0]
Get-ItemProperty -Path $i.ItemPath -Name  $i.ItemPropName
Set-ItemProperty  -Path $i.ItemPath -Name $i.ItemPropName -Value $i.CustomDefault
Get-ItemProperty -Path $i.ItemPath -Name  $i.ItemPropName