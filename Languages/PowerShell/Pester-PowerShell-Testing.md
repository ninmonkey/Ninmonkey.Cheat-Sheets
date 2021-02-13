- [Pester](#pester)
- [Snippits](#snippits)
  - [New File Template](#new-file-template)

# Pester


# Snippits

## New File Template

```powershell
BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1', '.ps1')
}

Describe "Get-FooBar" {
    It 'Hex String literal 0x1' {
        $Expected = 0x10
        0x10 | ConvertTo-Number | Should -Be 0x10
    }
}
```
