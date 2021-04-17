- [Config file Locations](#config-file-locations)
- [About: Notes on Everything.Exe Search](#about-notes-on-everythingexe-search)
  - [Hotkeys](#hotkeys)
  - [Dynamic docs lookup:](#dynamic-docs-lookup)
    - [Find `CLI` argument named `service_pipe_name`](#find-cli-argument-named-service_pipe_name)
    - [Find `.ini` option named `service_pipe_name`](#find-ini-option-named-service_pipe_name)
- [Must have settings](#must-have-settings)
- [Search Bar Commands](#search-bar-commands)
  - [Main commands](#main-commands)
  - [All Commands](#all-commands)
- [Documentation](#documentation)
  - [SDK: Docs and Libs](#sdk-docs-and-libs)
  - [File Lists `*.EFU`](#file-lists-efu)
  - [Automatically generate File list on a schedule](#automatically-generate-file-list-on-a-schedule)
- [Search Syntax, Macros, and Modifiers](#search-syntax-macros-and-modifiers)
  - [Operators](#operators)
  - [Wildcards](#wildcards)
  - [Macros](#macros)
  - [Modifiers](#modifiers)
  - [Functions](#functions)
  - [Function Syntax: Comparisons and Ranges](#function-syntax-comparisons-and-ranges)
  - [Size Syntax | Size Units](#size-syntax--size-units)
  - [Size Constants](#size-constants)
  - [Date Syntax](#date-syntax)
  - [Date Constants](#date-constants)
  - [Attribute Constants](#attribute-constants)
- [Format Strings](#format-strings)
  - [`time_format`](#time_format)
  - [`date_format`](#date_format)
  - [`statusbar_selected_item_format`](#statusbar_selected_item_format)
  - [Window Caption](#window-caption)
  - [Examples](#examples)
- [Command Line Arguments | Everything.Exe:](#command-line-arguments--everythingexe)
  - [Just a few args here:](#just-a-few-args-here)
  - [Full CommandLine Args](#full-commandline-args)
- [**wip: finish here](#wip-finish-here)
    - [EFU File List Queries](#efu-file-list-queries)
  - [Managing Everything `Service` on the CLI](#managing-everything-service-on-the-cli)
- [External Apps / File Manager](#external-apps--file-manager)
- [Search Examples](#search-examples)
  - [`*Content:` is slow, use it last](#content-is-slow-use-it-last)
  - [ID3v1 Mp3 tags](#id3v1-mp3-tags)
  - [image metadata](#image-metadata)
  - [duplicates](#duplicates)
  - [more examples](#more-examples)
- [Reference: `shell:<name>` `KNOWNFOLDERID`](#reference-shellname-knownfolderid)

# Config file Locations

| Path                                      | Description            |
| ----------------------------------------- | ---------------------- |
| `%AppData%\Everything`                    | Config Base Dir        |
| `%APPDATA%\Everything\Filters.csv`        | Custom Filters         |
| `%APPDATA%\Everything\Bookmarks.csv`      | Custom Bookmarks       |
| `%APPDATA%\Everything\Search History.csv` | Search History         |
| `%APPDATA%\Everything\Run History.csv`    | Run History            |
| `%LocalAppData%\Everything\Everything.db` | Default Location of DB |

# About: Notes on Everything.Exe Search

- Notes for [Everything Search](https://www.voidtools.com/support/everything/)
- Settings page [Everything.ini](https://www.voidtools.com/support/everything/ini/) [ Long page, all ini values ]
- [Settings that only exist in `Everything.ini`](https://www.voidtools.com/support/everything/ini/#hidden_settings)
- using [`Multiple Instances` and `Named Instances`](https://www.voidtools.com/support/everything/multiple_instances/#named_instances)
- [Command Line Args for Everything.exe](https://www.voidtools.com/support/everything/command_line_options/)
- [What's New: Notes](https://www.voidtools.com/support/everything/whats_new/)
- [Multi-File Renaming](https://www.voidtools.com/support/everything/results/#multi-file_renaming)
- Keyboard Hotkeys
  - [Search Hotkeys](https://www.voidtools.com/support/everything/keyboard_shortcuts/#search_edit_shortcuts)
  - [Global Hokeys](https://www.voidtools.com/support/everything/keyboard_shortcuts/#global_keyboard_shortcuts)
  - [Result List Hotkeys](https://www.voidtools.com/support/everything/keyboard_shortcuts/#result_list_shortcuts)

## Hotkeys

| Key                                        | Description |
| ------------------------------------------ | ----------- |
| `Control + Backtick` <kbd>Ctrl + \`></kbd> | Debug Mode  |
| `Alt + Home`                               | Home search |


## Dynamic docs lookup:

### Find `CLI` argument named `service_pipe_name`

- `https://www.voidtools.com/support/everything/command_line_options/#-service-pipe-name`
- `https://www.voidtools.com/support/everything/command_line_options/#-<flag_name>`

### Find `.ini` option named `service_pipe_name`

- `https://www.voidtools.com/support/everything/ini/#service_pipe_name`
- `https://www.voidtools.com/support/everything/ini/#<option_name>`


# Must have settings

- `Allow round bracket grouping`
- `Expand environment variables`
- `Open Path with double click in path column`
- `Size Format` = `Auto`
- `allow_exclamation_point_not` = `1`

# Search Bar Commands

[Docs: Search Bar Commands](https://www.voidtools.com/support/everything/searching/#search_commands)

## Main commands

| Command                  | Description                              |
| ------------------------ | ---------------------------------------- |
| `about:ini`              | Open `Everything.ini` config             |
| `/config_save`           | Export options                           |
| `/config_load`           | Import options                           |
| `/<option_name>`         | Show value of `option_name` on statusbar |
| `/<option_name>=<value>` | Set value of `option_name` to `value`    |

## All Commands

| Command                                 | Description                                                                                                                   |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `about:ini`                             | Open `Everything.ini` config                                                                                                  |
| `/config_save`                          | Export options                                                                                                                |
| `/config_load`                          | Import options                                                                                                                |
| `/<option_name>`                        | Show value of `option_name` on statusbar                                                                                      |
| `/<option_name>=<value>`                | Set value of `option_name` to `value`                                                                                         |
| `about:`                                | About                                                                                                                         |
| `about:config`                          | `Everything.ini`                                                                                                              |
| `about:home`                            | Home search                                                                                                                   |
| `about:options`<br/>`about:preferences` | Options                                                                                                                       |
| `/close`                                | Close **this** window                                                                                                         |
| `/closeall`                             | Close **all** windows                                                                                                         |
| `/command <id>`                         | run [Command ID in the SDK](https://www.voidtools.com/support/everything/sdk/)                                                |
| `/config_save`                          | Export options                                                                                                                |
| `/config_save <filepath>`               | Export options                                                                                                                |
| `/config_load`                          | Import options                                                                                                                |
| `/config_load <filepath>`               | Import options                                                                                                                |
| `/debug` <br> `/console`                | Debug mode                                                                                                                    |
| `/debug_log`                            | start `debug` and start logging                                                                                               |
| `/help`                                 | Help window                                                                                                                   |
| `/monitor_pause`                        | Stops NTFS, ReFS, file lists and folder monitors. Monitors are not started again until<br/> specified with `/monitor_resume`. |
| `/monitor_resume`                       | Starts NTFS, ReFS, file lists and folder monitors.                                                                            |
| `/quit`, `/exit`                        | exit                                                                                                                          |
| `/rebuild`, `/reindex`                  | rebuild                                                                                                                       |
| `/restart`                              | restart                                                                                                                       |
| `/verbose`                              | verbose debugging                                                                                                             |
| `/update`                               | **Update all** folder `indexes`                                                                                               |
| `/update <filepath>`                    | Update the specifed **folder index** by path now.                                                                             |
| `/<name>`                               | Display current value of `<name>` from `Everything.ini` **Supports <TAB> comletion**                                          |
| `/<name>=<value>`                       | Sets `<name>` = `<value>` in `Everything.ini`                                                                                 |

# Documentation

## SDK: Docs and Libs

- docs [Python SDK](https://www.voidtools.com/support/everything/sdk/python/)
- docs [C# SDK](https://www.voidtools.com/support/everything/sdk/csharp/)
- `C#` library: [dipique/everythingio](https://github.com/dipique/everythingio) (supports `dotnet` and `dotnet core` )

## File Lists `*.EFU`

Good for read-only, or non-changing data. Saves metadata to a `CSV`

- EFU [Everything File Lists](https://www.voidtools.com/support/everything/file_lists)
- [File Attributes: msdn win32](https://docs.microsoft.com/en-us/windows/win32/fileio/file-attribute-constants?redirectedfrom=MSDN)

## Automatically generate File list on a schedule

[Automatically generate File list on a schedule](https://www.voidtools.com/support/everything/file_lists/#update_a_file_list_with_the_task_scheduler)

# Search Syntax, Macros, and Modifiers

- [Search Syntax Docs](https://www.voidtools.com/support/everything/searching/)
- [Search Options](https://www.voidtools.com/support/everything/searching#search_options)

## Operators

| Operator   | Description             |
| ---------- | ----------------------- |
| space `' ` | Boolean AND             |
| `|`        | Boolean OR              |
| `!`        | Unary Not               |
| `<>`       | Grouping                |
| `()`       | Grouping                |
| `"phrase"` | Search for exact phrase |

## Wildcards

Wildcards when not using `regex` mode
| Wildcard | Description        |
| -------- | ------------------ |
| `*`      | Match zero or more |
| `?`      | Match one          |

## Macros

Default Macros:

| Macro    | Description                                       |
| -------- | ------------------------------------------------- |
| `quot:`  | Literal double quote `                            |
| `apos:`  | Literal apostrophe `                              |
| `amp:`   | Literal ampersand `&`                             |
| `lt:`    | Literal less than `<`                             |
| `gt:`    | Literal greater than `>`                          |
| `#<n>:`  | Literal unicode `codepoint` <n> in `decimal`.     |
| `#x<n>:` | Literal unicode `codepoint` <n> in `hexadecimal`. |
| `audio:` | Search for audio files.                           |
| `zip:`   | Search for compressed files.                      |
| `doc:`   | Search for document files.                        |
| `exe:`   | Search for executable files.                      |
| `pic:`   | Search for picture files.                         |
| `video:` | Search for video files.                           |

## Modifiers

Modify functions or regular search if `prefixed` by modifier

| Modifier                                                                         | Description                                                         |
| -------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `ascii:`<br/> `utf8:`<br/>`noascii:`                                             | Enable or disable fast `ASCII` case comparisons.                    |
| `case:`<br/>  `nocase:`                                                          | **Case-sensitive** or not                                           |
| `diacritics:`<br/> `nodiacritics:`                                               | Match or ignore **accent** marks.                                   |
| `file:`<br/> `files:`<br/> `nofileonly:`                                         | Match **files** only.                                               |
| `folder:`<br/> `folders:`<br/> `nofolderonly:`                                   | Match **folders** only.                                             |
| `path:`<br/>`nopath:`                                                            | Match the **full path** and **file name** or just the **filename**. |
| `regex:` <br/>`noregex:`                                                         | toggle `regex` mode                                                 |
| `wfn:`<br/> `wholefilename:`<br/> `nowfn:`<br/> `nowholefilename:`<br/> `exact:` | Match the **whole filename** or match **anywhere in the filename**. |
| `wholeword:` <br/>`ww:` <br/>`nowholeword:` <br/>`noww:`                         | Match** whole words** or **match anywhere** in the **filename**.    |
| `wildcards:` <br/> `nowildcards:`                                                | toggle Wildcards                                                    |

## Functions

[Functions with parameters](https://www.voidtools.com/support/everything/searching/#functions)

| Function                                                                                                            | Description                                                                                     |
| ------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `album:<album>`                                                                                                     | Search for the ID3 or FLAC album.                                                               |
| `artist:<artist>`                                                                                                   | Search for the ID3 or FLAC artist.                                                              |
| `attrib:<attributes>` <br/> `attributes:<attributes>`                                                               | Search for files and folders with the specified file attributes.                                |
| `bitdepth:<bitdepth>`                                                                                               | Find images with the specified bits per pixel.                                                  |
| `child:<filename>`                                                                                                  | Search for folders that contain a child file or folder with a matching filename.                |
| `childcount:<count>`                                                                                                | Search for folders that contain the specified number of subfolders and files.                   |
| `childfilecount:<count>`                                                                                            | Search for folders that contain the specified number of files.                                  |
| `childfoldercount:<count>`                                                                                          | Search for folders that contain the specified number of subfolders.                             |
| `comment:<comment>`                                                                                                 | Search for the ID3 or FLAC comment.                                                             |
| `content:` <br/> `ansicontent:` <br/> `utf8content:` <br/> `utf16content:` <br/> `utf16becontent:`                  | Search file contents.                                                                           |
| `count:<max>`                                                                                                       | Limit the number of results to max.                                                             |
| `dateaccessed:<date>` <br/> `da:<date>`                                                                             | Search for files and folders with the specified date accessed.                                  |
| `datecreated:<date>` <br/> `dc:<date>`                                                                              | Search for files and folders with the specified date created.                                   |
| `datemodified:<date>` <br/> `dm:<date>`                                                                             | Search for files and folders with the specified date modified.                                  |
| `daterun:<date>` <br/> `dr:<date>`                                                                                  | Search for files and folders with the specified date run.                                       |
| `depth:<count>` <br/> `parents:<count>`                                                                             | Search for files and folders with the specified folder depth.                                   |
| `dimension:<width>x<height>`                                                                                        | Find images with the specified width and height.                                                |
| `dupe:` <br/> `namepartdupe:` <br/> `attribdupe:` <br/> `dadupe:` <br/> `dcdupe:` <br/> `dmdupe:` <br/> `sizedupe:` | Search for duplicated files.                                                                    |
| `empty:`                                                                                                            | Search for empty folders.                                                                       |
| `endwith:<text>`                                                                                                    | Filenames (including extension) ending with text.                                               |
| `ext:<list>`                                                                                                        | Search for files with a matching extension in the specified semicolon delimited extension list. |
| `filelist:<list>`                                                                                                   | Search for a list of file names in the specified pipe (                                         | ) delimited file list. |
| `filelistfilename:<filename>`                                                                                       | Search for files and folders belonging to the file list filename.                               |
| `frn:<frnlist>`                                                                                                     | Search for files and folders with the specified semicolon delimited File Reference Numbers.     |
| `fsi:<index>`                                                                                                       | Search for files and folders in the specified zero based internal file system index.            |
| `genre:<genre>`                                                                                                     | Search for the ID3 or FLAC genre.                                                               |
| `height:<height>`                                                                                                   | Search for images with the specified height in pixels.                                          |
| `len:<length>`                                                                                                      | Search for files and folders that match the specified filename length.                          |
| `orientation:<type>`                                                                                                | Search for images with the specified orientation (landscape or portrait).                       |
| `parent:<path>` <br/> `infolder:<path>` <br/> `nosubfolders:<path>`                                                 | Search for files and folders in the specified path, excluding subfolders.                       |
| `recentchange:<date>` <br/> `rc:<date>`                                                                             | Search for files and folders with the specified recently changed date.                          |
| `root:`                                                                                                             | Search for files and folders with no parent folder.                                             |
| `runcount:<count>`                                                                                                  | Search for files and folders with the specified run count.                                      |
| `shell:<name>`                                                                                                      | Search for a known shell folder name, including subfolders and files.                           |
| `size:<size>`                                                                                                       | Search for files with the specified size in bytes.                                              |
| `startwith:<text>`                                                                                                  | Search for filenames starting with text.                                                        |
| `title:<title>`                                                                                                     | Search for the ID3 or FLAC title.                                                               |
| `type:<type>`                                                                                                       | Search for files and folders with the specified type.                                           |
| `width:<width>`                                                                                                     | Search for images with the specified width in pixels.                                           |

## Function Syntax: Comparisons and Ranges

| Syntax                | Description                                  |
| --------------------- | -------------------------------------------- |
| `function:value`      | Equal to value.                              |
| `function:<=value`    | Less than or equal to value.                 |
| `function:<value`     | Less than value.                             |
| `function:=value`     | Equal to value.                              |
| `function:>value`     | Greater than value.                          |
| `function:>=value`    | Greater than or equal to value.              |
| `function:start..end` | Is in the range of values from start to end. |
| `function:start-end`  | Is in the range of values from start to end. |

## Size Syntax | Size Units

`size<unit>`
`size[kb|mb|gb]`

## Size Constants

| Constant   | Description            |
| ---------- | ---------------------- |
| `empty`    | &nbsp;                 |
| `tiny`     | 0 KB < size <= 10 KB   |
| `small`    | 10 KB < size <= 100 KB |
| `medium`   | 100 KB < size <= 1 MB  |
| `large`    | 1 MB < size <= 16 MB   |
| `huge`     | 16 MB < size <= 128 MB |
| `gigantic` | size > 128 MB          |
| `unknown`  | &nbsp;                 |


## Date Syntax

| Syntax                                                   | Locale based?                |
| -------------------------------------------------------- | ---------------------------- |
| `year`                                                   | &nbsp;                       |
| `month/year` or `year/month`                             | depending on locale settings |
| `day/month/year` or `month/day/year` or `year/month/day` | depending on locale settings |
| `YYYY[-MM[-DD[Thh[:mm[:ss[.sss]]]]]]`                    | &nbsp;                       |
| `YYYYMM[DD[Thh[mm[ss[.sss]]]]]`                          | &nbsp;                       |



## Date Constants

| Constant                                                                                |
| --------------------------------------------------------------------------------------- |
| `today`                                                                                 |
| `yesterday`                                                                             |
| `<last|past|prev|current|this|coming|next><year|month|week>`                            |
| `<last|past|prev|coming|next><x><years|months|weeks>`                                   |
| `<last|past|prev|coming|next><x><hours|minutes|mins|seconds|secs>`                      |
| `january|february|march|april|may|june|july|august|september|october|november|december` |
| `jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec`                                       |
| `sunday|monday|tuesday|wednesday|thursday|friday|saturday`                              |
| `sun|mon|tue|wed|thu|fri|sat`                                                           |
| `unknown`                                                                               |

## Attribute Constants

| Attribute | Description         |
| --------- | ------------------- |
| `A`       | Archive             |
| `C`       | Compressed          |
| `D`       | Directory           |
| `E`       | Encrypted           |
| `H`       | Hidden              |
| `I`       | Not content indexed |
| `L`       | Reparse point       |
| `N`       | Normal              |
| `O`       | Offline             |
| `P`       | Sparse file         |
| `R`       | Read only           |
| `S`       | System              |
| `T`       | Temporary           |
| `V`       | Device              |


# Format Strings

## `time_format`

Time format can be zero or more of the following

| String | Description                                                           |
| ------ | --------------------------------------------------------------------- |
| `h`    | Hours with no leading zero for single-digit hours; 12-hour clock.     |
| `hh`   | Hours with leading zero for single-digit hours; 12-hour clock.        |
| `H`    | Hours with no leading zero for single-digit hours; 24-hour clock.     |
| `HH`   | Hours with leading zero for single-digit hours; 24-hour clock.        |
| `m`    | Minutes with no leading zero for single-digit minutes.                |
| `mm`   | Minutes with leading zero for single-digit minutes.                   |
| `s`    | Seconds with no leading zero for single-digit seconds.                |
| `ss`   | Seconds with leading zero for single-digit seconds.                   |
| `t`    | One character time-marker string, such as A or P.                     |
| `tt`   | Multicharacter time-marker string, such as AM or PM.                  |
| `SSS`  | Milliseconds with leading zeros, must be the last part of the format. |

## `date_format`

Date format can be zero or more of the following

| String | Description                                                                                                                                                                                                           |
| ------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `d`    | Day of month as digits with no leading zero for single-digit days.                                                                                                                                                    |
| `dd`   | Day of month as digits with leading zero for single-digit days.                                                                                                                                                       |
| `ddd`  | Day of week as a three-letter abbreviation. The function uses the `LOCALE_SABBREVDAYNAME`</br> value associated with the specified locale.                                                                            |
| `dddd` | Day of week as its full name. The function uses the `LOCALE_SDAYNAME`</br> value associated with the specified locale.                                                                                                |
| `M`    | Month as digits with no leading zero for single-digit months.                                                                                                                                                         |
| `MM`   | Month as digits with leading zero for single-digit months.                                                                                                                                                            |
| `MMM`  | Month as a three-letter abbreviation. The function uses the `LOCALE_SABBREVMONTHNAME`</br> value associated with the specified locale.                                                                                |
| `MMMM` | Month as its full name. The function uses the `LOCALE_SMONTHNAME`</br> value associated with the specified locale.                                                                                                    |
| `y`    | Year as last two digits, but with no leading zero for years less than 10.                                                                                                                                             |
| `yy`   | Year as last two digits, but with leading zer]o for years less than 10.                                                                                                                                               |
| `yyyy` | Year represented by full four digits.                                                                                                                                                                                 |
| `gg`   | Period/era string. The function uses the `CAL_SERASTRING` value associated with the</br> specified locale. This element is ignored if the date to be formatted does not have</br> an associated era or period string. |

## `statusbar_selected_item_format`

| String | Substitution            |
| ------ | ----------------------- |
| `$$`   | `$` Literal             |
| `$f`   | Full path and file name |
| `$n`   | Name                    |
| `$p`   | Path                    |
| `$s`   | Size                    |
| `$e`   | Extension               |
| `$t`   | Type                    |
| `$m`   | Date modified           |
| `$c`   | Date created            |
| `$a`   | Date accessed           |
| `$b`   | Attributes              |
| `$d`   | Date recently changed   |
| `$r`   | Run count               |
| `$u`   | Date last run           |
| `$l`   | File list file name     |

## Window Caption

| Variable    | Description                       |
| ----------- | --------------------------------- |
| `$s`        | Current search                    |
| `$t`        | Everything (localized)            |
| `$v`        | Version                           |
| `$i`        | Instance name                     |
| `$x?{text}` | Display text if `$x` is not empty |

## Examples

```ini
window_title_format=$s?{$s - }$t$i?{ ($i)}
http_title_format=$s?{$s - }$t
taskbar_notification_title_format=$t$i?{ ($i)}
```

| Format                | User Search | Title              |
| --------------------- | ----------- | ------------------ |
| `$s?{$s - }My Search` | apples      | apples - My Search |
| `$s?{$s - }My Search` |             | My Search          |



# Command Line Arguments | Everything.Exe:

[`Everything.exe` CLI args](https://www.voidtools.com/support/everything/command_line_options/)

## Just a few args here:

| CLI Arg                                                | Description                                                                                                                                      |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| `-debug` and `-verbose`                                | Debug Mode                                                                                                                                       |
| `-config settings.ini`                                 | use a custom ini location                                                                                                                        |
| `-instance "ETP Server"`                               | launch using `named instance`                                                                                                                    |
| `-service-pipe-name "\\\\.\\PIPE\\Everything Service"` | [Connect `Service` to `Named Instance`](https://www.voidtools.com/support/everything/multiple_instances/#service)                                |
| `-create-file-list-exclude-files <filters>`            | exclude files.                                                                                                                                   |
| `-create-file-list-exclude-folders <filters>`          | exclude folders.                                                                                                                                 |
| `-create-file-list-include-only-files <filters>`       | include only the specifie                                                                                                                        |
| `-create-file-list <output-filename> <path-to-scan>`   | [Scan and create `EFU` file list](https://www.voidtools.com/support/everything/file_lists/#how_do_i_make_an_efu_file_list_from_the_command_line) |

Default un-named instance is `\\\\.\\PIPE\\Everything Service`

> To use the same service for all instances, use the `-service-pipe-name` CLI arg or `service_pipe_name` ini option to specify the same service pipe name.

## Full CommandLine Args

[Docs: Commandline Args](https://www.voidtools.com/support/everything/command_line_options/)


| CLI Arg                 | Description |
| ----------------------- | ----------- |
| `-debug` and `-verbose` | Debug Mode  |


Default un-named instance is `\\\\.\\PIPE\\Everything Service`

> To use the same service for all instances, use the `-service-pipe-name` CLI arg or `service_pipe_name` ini option to specify the same service pipe name.
>
# **wip: finish here

https://www.voidtools.com/support/everything/command_line_options/


### EFU File List Queries

```powershell
# To create a file list excluding tmp files:
Everything.exe -create-file-list "myfilelist.efu" "c:\" -create-file-list-exclude-files "*.tmp"

# To create a file list excluding lnk and thumbs.db files:
Everything.exe -create-file-list "myfilelist.efu" "c:\" -create-file-list-exclude-files "*.lnk;thumbs.db"

# To exclude folders with the name 1033:
Everything.exe -create-file-list "myfilelist.efu" "c:\" -create-file-list-exclude-folders "1033"

# To exclude a specific folder
Everything.exe -create-file-list "myfilelist.efu" "c:\" -create-file-list-exclude-folders "c:\windows"

# To exclude specific folders
Everything.exe -create-file-list "myfilelist.efu" "c:\" -create-file-list-exclude-folders "c:\windows;c:\program files;c:\program files (x86)"

# To include specified files only:
Everything.exe -create-file-list "myfilelist.efu" "c:\" -create-file-list-include-only-files "*.mp3;*.flac"

# regex can be used in the exclude lists, for example, exclude files starting with A-M
Everything.exe -create-file-list "myfilelist.efu" "c:\" -create-file-list-exclude-files "regex:^^[A-M]"

# Path matching can be done by including a \ in your filter (\\ for regex).
Everything.exe -create-file-list "myfilelist.efu" "c:\" -create-file-list-exclude-files "c:\folder\a specific file.txt"
```

## Managing Everything `Service` on the CLI

```powershell
Everything.exe -install-service [-install-service-pipe-name <name>] [-install-service-security-descriptor <sd>]
Everything.exe -uninstall-service
Everything.exe -start-service
Everything.exe -stop-service
```

# External Apps / File Manager

- [External File Manager](https://www.voidtools.com/support/everything/customizing/#external_file_manager)

replace `$exec("C:\Program Files $(x86$)\ExternalFileManager\ExternalFileManager.exe" "%1")`

# Search Examples

## `*Content:` is slow, use it last

`*.eml dm:thisweek content:banana`

## ID3v1 Mp3 tags

```
year:2002..2005
genre:electronic
regex:album:^[a-n]
wildcards:title:red*
track:>10
year:>=2000
```

## image metadata

```
width:>2560
width:800..1920
height:600..1080
dimensions:800x600..1920x1080
```

## duplicates

```
dupe: .mp4
size:>1gb sizedupe:
```

## more examples

```bash
# Search for ABC and 123:
ABC 123

# Search for ABC or 123:
ABC|123

# Search for everything except ABC:
!ABC

# Search for uppercase ABC
case:ABC

# Search for mp3 files:
*.mp3

# Search for mp3 files on the D: or E: drive:
d:|e: *.mp3

# Search for jpg or png files on the D: drive:
d: *.jpg|*.png

# Search for files or folders with no extension:
!.

# Search for files only:
file:

# Search for folders only:
folder:

# Limit the search to a single folder:
parent:c:\windows

# Find files larger than 1MB:
size:>1mb

# Instantly find files that have changed today:
dm:today

# Find files and folders modified this week:
dm:thisweek

# Find files and folders modified from the 1st August 2014 to 31st August 2014:
# Depending on your locale settings.
dm:1/8/2014-31/8/2014
# or:
dm:8/1/2014-8/31/2014

# Find folders in D:\music that do not contain an mp3 file:
d:\music\ !child:mp3


# Find filenames with non-ASCII characters:
regex:[^\x00-\x7f]
```

# Reference: `shell:<name>` `KNOWNFOLDERID`

| Name                        | Availability                | Path                                                                                                    |
| --------------------------- | --------------------------- | ------------------------------------------------------------------------------------------------------- |
| AccountPictures             | Windows 8, 10               | C:\Users\User\AppData\Roaming\Microsoft\Windows\AccountPictures                                         |
| Administrative Tools        | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Administrative Tools                |
| AppData                     | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming                                                                           |
| Application Shortcuts       | Windows 8, 10               | C:\Users\User\AppData\Local\Microsoft\Windows\Application Shortcuts                                     |
| Cache                       | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\XXXXXXXX             |
| Camera Roll                 | Windows 8, 10               | C:\Users\User\Pictures\Camera Roll                                                                      |
| CD Burning                  | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Local\Microsoft\Windows\Burn\Burn                                                 |
| Common Administrative Tools | Windows XP, Vista, 7, 8, 10 | C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools                               |
| Common AppData              | Windows XP, Vista, 7, 8, 10 | C:\ProgramData                                                                                          |
| Common Desktop              | Windows XP, Vista, 7, 8, 10 | C:\Users\Public\Desktop                                                                                 |
| Common Documents            | Windows XP, Vista, 7, 8, 10 | C:\Users\Public\Documents                                                                               |
| Common Programs             | Windows XP, Vista, 7, 8, 10 | C:\ProgramData\Microsoft\Windows\Start Menu\Programs                                                    |
| Common Start Menu           | Windows XP, Vista, 7, 8, 10 | C:\ProgramData\Microsoft\Windows\Start Menu                                                             |
| Common Start Menu Places    | Windows 10                  | C:\ProgramData\Microsoft\Windows\Start Menu Places                                                      |
| Common Startup              | Windows XP, Vista, 7, 8, 10 | C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup                                            |
| Common Templates            | Windows XP, Vista, 7, 8, 10 | C:\ProgramData\Microsoft\Windows\Templates                                                              |
| CommonDownloads             | Windows Vista, 7, 8, 10     | C:\Users\Public\Downloads                                                                               |
| CommonMusic                 | Windows Vista, 7, 8, 10     | C:\Users\Public\Music                                                                                   |
| CommonPictures              | Windows XP, Vista, 7, 8, 10 | C:\Users\Public\Pictures                                                                                |
| CommonRingtones             | Windows 7, 8, 10            | C:\ProgramData\Microsoft\Windows\Ringtones                                                              |
| CommonVideo                 | Windows XP, Vista, 7, 8, 10 | C:\Users\Public\Videos                                                                                  |
| Contacts                    | Windows Vista, 7, 8, 10     | C:\Users\User\Contacts                                                                                  |
| Cookies                     | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Cookies                                                 |
| CredentialManager           | Windows Vista, 7, 8, 10     | C:\Users\User\AppData\Roaming\Microsoft\Credentials                                                     |
| CryptoKeys                  | Windows Vista, 7, 8, 10     | C:\Users\User\AppData\Roaming\Microsoft\Crypto                                                          |
| Default Gadgets             | Windows Vista, 7            | C:\Program Files (x86)\Windows Sidebar\Gadgets                                                          |
| Desktop                     | Windows XP, Vista, 7, 8, 10 | C:\Users\User\Desktop                                                                                   |
| Device Metadata Store       | Windows 7, 8, 10            | C:\ProgramData\Microsoft\Windows\DeviceMetadataStore                                                    |
| DocumentsLibrary            | Windows 7, 8, 10            | Libraries\Documents                                                                                     |
| Downloads                   | Windows Vista, 7, 8, 10     | C:\Users\User\Downloads                                                                                 |
| DpapiKeys                   | Windows Vista, 7, 8, 10     | C:\Users\User\AppData\Roaming\Microsoft\Protect                                                         |
| Favorites                   | Windows XP, Vista, 7, 8, 10 | C:\Users\User\Favorites                                                                                 |
| Fonts                       | Windows XP, Vista, 7, 8, 10 | C:\Windows\Fonts                                                                                        |
| Gadgets                     | Windows Vista, 7            | C:\Users\User\AppData\Local\Microsoft\Windows Sidebar\Gadgets                                           |
| GameTasks                   | Windows Vista, 7, 8, 10     | C:\Users\User\AppData\Local\Microsoft\Windows\GameExplorer                                              |
| History                     | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Local\Microsoft\Windows\History                                                   |
| ImplicitAppShortcuts        | Windows 7, 8, 10            | C:\Users\User\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\ImplicitAppShortcuts |
| Links                       | Windows Vista, 7, 8, 10     | C:\Users\User\Links                                                                                     |
| Local AppData               | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Local                                                                             |
| Local Documents             | Windows 10                  | C:\Users\User\Documents                                                                                 |
| Local Downloads             | Windows 10                  | C:\Users\User\Downloads                                                                                 |
| Local Music                 | Windows 10                  | C:\Users\User\Music                                                                                     |
| Local Pictures              | Windows 10                  | C:\Users\User\Pictures                                                                                  |
| Local Videos                | Windows 10                  | C:\Users\User\Videos                                                                                    |
| LocalAppDataLow             | Windows Vista, 7, 8, 10     | C:\Users\User\AppData\LocalLow                                                                          |
| LocalizedResourcesDir       | Windows XP, Vista           | C:\Windows\Resources\<LanguageID>                                                                       |
| My Music                    | Windows XP, Vista, 7, 8, 10 | C:\Users\User\Music                                                                                     |
| My Pictures                 | Windows XP, Vista, 7, 8, 10 | C:\Users\User\Pictures                                                                                  |
| My Video                    | Windows XP, Vista, 7, 8, 10 | C:\Users\User\Videos                                                                                    |
| NetHood                     | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Network Shortcuts                                       |
| OneDrive                    | Windows 8, 10               | C:\Users\User\OneDrive                                                                                  |
| Personal                    | Windows XP, Vista, 7, 8, 10 | C:\Users\User\Documents                                                                                 |
| PrintHood                   | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Printer Shortcuts                                       |
| Profile                     | Windows XP, Vista, 7, 8, 10 | C:\Users\User                                                                                           |
| ProgramFiles                | Windows XP, Vista, 7, 8, 10 | C:\Program Files                                                                                        |
| ProgramFilesCommon          | Windows Vista, 7, 8, 10     | C:\Program Files\Common Files                                                                           |
| ProgramFilesCommonX64       | Windows 10                  | C:\Program Files\Common Files                                                                           |
| ProgramFilesCommonX86       | Windows Vista, 7, 8, 10     | C:\Program Files (x86)\Common Files                                                                     |
| ProgramFilesX64             | Windows 10                  | C:\Program Files                                                                                        |
| ProgramFilesX86             | Windows Vista, 7, 8, 10     | C:\Program Files (x86)                                                                                  |
| Programs                    | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs                                     |
| Public                      | Windows Vista, 7, 8, 10     | C:\Users\Public                                                                                         |
| PublicAccountPictures       | Windows 8, 10               | C:\Users\Public\AccountPictures                                                                         |
| PublicGameTasks             | Windows Vista, 7, 8, 10     | C:\ProgramData\Microsoft\Windows\GameExplorer                                                           |
| PublicLibraries             | Windows 8, 10               | C:\Users\Public\Libraries                                                                               |
| Quick Launch                | Windows Vista, 7, 8, 10     | C:\Users\User\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch                                  |
| Recent                      | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Recent                                                  |
| ResourceDir                 | Windows XP, Vista, 7, 8, 10 | C:\Windows\Resources                                                                                    |
| Ringtones                   | Windows 7, 8, 10            | C:\Users\User\AppData\Local\Microsoft\Windows\Ringtones                                                 |
| Roaming Tiles               | Windows 8, 10               | C:\Users\User\AppData\Local\Microsoft\Windows\RoamingTiles                                              |
| SampleMusic                 | Windows Vista, 7            | C:\Users\Public\Music\Sample Music                                                                      |
| SamplePictures              | Windows Vista, 7            | C:\Users\Public\Pictures\Sample Pictures                                                                |
| SampleVideos                | Windows Vista, 7            | C:\Users\Public\Videos\Sample Videos                                                                    |
| SavedGames                  | Windows Vista, 7, 8, 10     | C:\Users\User\Saved Games                                                                               |
| SavedPictures               | Windows 10                  | C:\Users\User\Pictures\Saved Pictures                                                                   |
| Searches                    | Windows Vista, 7, 8, 10     | C:\Users\User\Searches                                                                                  |
| SendTo                      | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\SendTo                                                  |
| SkyDriveCameraRoll          | Windows 8                   | C:\Users\User\SkyDrive\Pictures\Camera Roll                                                             |
| SkyDriveDocuments           | Windows 8                   | C:\Users\User\SkyDrive\Documents                                                                        |
| SkyDriveMusic               | Windows 8                   | C:\Users\User\SkyDrive\Music                                                                            |
| SkyDrivePictures            | Windows 8                   | C:\Users\User\SkyDrive\Pictures                                                                         |
| Start Menu                  | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu                                              |
| Startup                     | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup                             |
| System                      | Windows XP, Vista, 7, 8, 10 | C:\Windows\System32                                                                                     |
| SystemCertificates          | Windows Vista, 7, 8, 10     | C:\Users\User\AppData\Roaming\Microsoft\SystemCertificates                                              |
| SystemX86                   | Windows XP, Vista, 7, 8, 10 | C:\Windows\SysWOW64                                                                                     |
| Templates                   | Windows XP, Vista, 7, 8, 10 | C:\Users\User\AppData\Roaming\Microsoft\Windows\Templates                                               |
| ThisDeviceFolder            | Windows 8, 10               | C:\Users\Public                                                                                         |
| User Pinned                 | Windows 7, 8, 10            | C:\Users\User\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned                      |
| UserProfiles                | Windows Vista, 7, 8, 10     | C:\Users                                                                                                |
| UserProgramFiles            | Windows 7, 8, 10            | C:\Users\User\AppData\Local\Programs                                                                    |
| UserProgramFilesCommon      | Windows 7, 8, 10            | C:\Users\User\AppData\Local\Programs\Common                                                             |
| UsersFilesFolder            | Windows Vista, 7, 8, 10     | C:\Users\User                                                                                           |
| Windows                     | Windows XP, Vista, 7, 8, 10 | C:\Windows                                                                                              |
