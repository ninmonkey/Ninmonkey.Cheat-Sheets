# Jake 2020-06

# max sizes when regexes get huge on unicode

```powershell
rg '\pL{1000}' --regex-size-limit 1G
```

# <h1> required
--smart-case     # insensitive unless capital exists
--with-filename

-b, --byte-offset
    show `0-based` byte offset
    if `-o`, `--only-matching`
        print offset of match

> If ripgrep does transcoding, then the byte offset is in terms of the the result
> of transcoding and not the original data. This applies similarly to another
> transformation on the source, such as decompression or a --pre filter. Note
> that when the PCRE2 regex engine is used, then UTF-8 transcoding is done by
> default.


# --max-filesize 50K or --max-filesize 80M # units: K, M, G
--max-filesize 200M # units: K, M, G
--mmap
--context

-E, --encoding <ENCODING>
    default 'auto'
    'none' = ***decode none, view raw bytes***

-f, --file <PATTERNFILE>
    ***todo** make powershell macros

--binary
    detection file is binary if NULL found

-M, --max-columns <num>
-M, --max-columns-preview <num>

-n, --line-number # 1-based
-x, --line-regexp # anchor matches (compare to word)
    # overrides: --word-regexpp

-l, --files-with-matches
    --files-without-match

-C, --context=<NUM>
-B, --before-context
-A, --after-context
--color <never | auto | always | ansi>
    (`ansi` means preserve ANSI)
--colors <COLOR_SPEC>
--auto-hybrid-regex, --no-hybrid-regex
    -e,j --regexp
    -f, --file
--block-buffered
--no-block-buffered
--line-buffered

--crlf
-c, --count
--count-matches
-m, --max-count <num> # num matching lines per file searched
--max-depth <num> # directory depth, 0 is explicit paths only
# --no-ignore-global
# --ignore-global
    # Don't respect ignore files that come from "global" sources such as git's
    # `core.excludesFile` configuration option (which defaults to
    # `$HOME/.config/git/ignore`).

# --passthru
# equal to: '$|foo'
# --multiline-dotall,
--line-buffered
-U, --multiline
        # Enable matching across multiple lines.

        # When multiline mode is enabled, ripgrep will lift the restriction that a match
        # cannot include a line terminator. For example, when multiline mode is not
        # enabled (the default), then the regex '\p{any}' will match any Unicode
        # codepoint other than '\n'. Similarly, the regex '\n' is explicitly forbidden,
        # and if you try to use it, ripgrep will return an error. However, when multiline
        # mode is enabled, '\p{any}' will match any Unicode codepoint, including '\n',
        # and regexes like '\n' are permitted.
# -I, --no-filename
    # --with-filename
# --no-config # ignore RIPGREP_CONFIG_PATH
-s, --case-sensitive
-i, --ignore-case
-S, --smart-case



# --no-heading
# --no-heading, --heading
    # Don't group matches by each file. If --no-heading is provided in addition to
    # the -H/--with-filename flag, then file paths will be printed as a prefix for
    # every matched line. This is the default mode when not printing to a terminal.

    # This overrides the --heading flag.
# --no-config
#    Never read configuration files. When this flag is present, ripgrep will not
#    respect the RIPGREP_CONFIG_PATH environment variable.

#    If ripgrep ever grows a feature to automatically read configuration files in
#    pre-defined locations, then this flag will also disable that behavior as well.

# --N, --no-line-number
# --no-message
# --pcre2-unicode
# --no-pcre2-unicode
# --no-mmap, --map
-L, --follow
#symlinks

--hidden, --no-hidden
-g, --glob <glob>

--iglob <glob>
    prefix `!` to exclude glob
--heading
-i, --ignore-case


# -o, --only-matching
# -p, --pretty
    # equivalent: --color always --heading --line-number
# -q, --quiet
    print nothing, stop on match
    with --files : stop finding after first
# stats
# --pre <COMMAND>
# --pre-glob <GLOB>
    # use with --pre

--path-separator <SEPARATOR>

# -P, --pcre2 # and --pcre2-version
--pcre2

# null-paths
# -0, --null
# --null-data

    # This is useful when searching large binary files that would otherwise have very
    # long lines if '\n' were used as the line terminator. In particular, ripgrep
    # requires that, at a minimum, each line must fit into memory. Using NUL instead
    # can be a useful stopgap to keep memory requirements low and avoid OOM (out of
    # memory) conditions.

# such as with --count, --files-with-matches and --files. This # option is useful
# for use with xargs.


# -r, --replace <replacement_text>

# <h1> special searches
    # --search-zip
    # -a, --text # treat binary as text
        # captures $5 or named $foo
    # --unrestricted
        # 1 = ignore .gitignore files
        # 2 = hidden files and dir
        # 3 = binary files

# --no-ignore-vcs, --ignore-vcs
# --no-ignore-global
# --ignore-parent
# --no-ignore-dot
# --no-ignore-parent
# --no-ignore-messages
    # Don't respect version control ignore files (.gitignore, etc.). This implies
    # --no-ignore-parent for VCS files. Note that .ignore files will continue to b
    # respected.
    # This flag can be disabled with the --ignore-vcs flag.

# <h1>  custom types
# --type-add 'src:include:cpp,py,md' --type-add 'src:*.foo'
# -t, --type <type>
# --type-not
# --type-list
# --sortr < path | modified | accessed | created | none >
# --sortr < path | modified | accessed | created | none > # same butr descending order

# --threads <num>

# --trim # strip ascii whitespace at start/end

# --word-regexp



