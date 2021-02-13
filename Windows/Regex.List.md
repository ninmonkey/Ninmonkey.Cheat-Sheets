Regex List

# For VS Code

## De-dent markdown 1 level



| Pattern  | Substitution | Description                               |
| -------- | ------------ | ----------------------------------------- |
| `^#(#+)` | `$1`         | dedent only values that are 2 or more `#` |
| `^(#+)`  | `#$1`        | indent `#`                                |


```
^#(#+)
```
replace with
```
$1
```

# Misc

## Null, Ascii, non-ascii

| pattern        | Description                          |
| -------------- | ------------------------------------ |
| `[\x00]`       | null string / byte `0`               |
| `[\x00-0x1f]`  | Ascii text (7bits)                   |
| `[^0x00-0x1f]` | Non-Ascii ( unicode max: `0x10ffff`) |