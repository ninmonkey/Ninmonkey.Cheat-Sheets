- [Custom settings on Firefox](#custom-settings-on-firefox)
- [`About:Config` `query` suggestions](#aboutconfig-query-suggestions)
- [My Config](#my-config)
  - [performance](#performance)
  - [unsorted](#unsorted)
- [**Todo / RFI** Things not manually confirmed](#todo--rfi-things-not-manually-confirmed)
  - [bookmarks](#bookmarks)
- [**Todo** Settings that might be interesting](#todo-settings-that-might-be-interesting)
  - [`HTTPS` only, etc.](#https-only-etc)

# Custom settings on Firefox

- is there any docs, or (todo: link to source code)

# `About:Config` `query` suggestions

First try:

- `urlbar`
- `browser`
- `suggest`
- `min` | `max` | `num` | `size` | `count`
- `network`
- `bookmarks`
- `url` | `uri`
- `tab`
- `accessibility`
- `mouse`
- `https` | `http`

And more

- `show`
- `location`
- `ui`
- `performance`
- `about`
- `exper` | `experiment`
- `menu`
- `general`
- `video`
- `suggest`
- `devtools`
- `control`
- `android`

# My Config

Created: 2021-06

## performance

| Value  | Default. | Key                                      |
| ------ | -------- | ---------------------------------------- |
| `true` | `false`  | `browser.tabs.loadBookmarksInBackground` |

A huge amount of bookmarks in `other bookmarks` (or maybe any folder) can cause a large lag after opening.  big UX lag. I think this might mitigate that. **RFI**

## unsorted

Some of these are using default values

| Value  | Default. | Key                                                                                               |
| ------ | -------- | ------------------------------------------------------------------------------------------------- |
| `true` | `false`  | `browser.tabs.loadBookmarksInBackground`                                                          |
| `true` | `true`   | `services.sync.prefs.sync.browser.newtabpage.activity-stream.section.highlights.includeBookmarks` |

Clicking bookmarks will either open in current tab, or a new one.

| Key                                             | Value | Default |
| ----------------------------------------------- | ----- | ------- |
| `browser.bookmarks.editDialog.maxRecentFolders` | 15    | `int` 7 |

**RFI**: didn't see change yet

| Key                                           | Value | Default |
| --------------------------------------------- | ----- | ------- |
| browser.toolbars.bookmarks.showOtherBookmarks | true  | false   |

| Value | Default |
| ----- | ------- |
| `15`  | `7`     |


# **Todo / RFI** Things not manually confirmed

## bookmarks 

| Key                                                    | Value                                                   | Default |
| ------------------------------------------------------ | ------------------------------------------------------- | ------- |
| browser.bookmarks.defaultLocation                      | text? `0KwdpgBwmJEi` <br> bookmarks.sqlite3 key `PK`  ? | a       |
| browser.bookmarks.editDialog.confirmationHintShowCount | int `3`                                                 | a       |
| browser.bookmarks.editDialog.firstEditField            | string `tagsField`                                      | a       |
| browser.bookmarks.editDialog.maxRecentFolders          | int `15`                                                | a       |
| browser.bookmarks.editDialog.showForNewBookmarks       | false                                                   | a       |

# **Todo** Settings that might be interesting

| Key                                                                    | Values |
| ---------------------------------------------------------------------- | ------ |
| browser.bookmarks.max_backups                                          | 15     |
| browser.bookmarks.openInTabClosesMenu                                  | true   |
| browser.migrate.showBookmarksToolbarAfterMigration                     | true   |
| browser.newtabpage.activity-stream.section.highlights.includeBookmarks | true   |
| browser.tabs.loadBookmarksInBackground                                 | false  |
| browser.tabs.loadBookmarksInTabs                                       | false  |
| browser.toolbars.bookmarks.2h2020                                      | true   |
| browser.toolbars.bookmarks.showOtherBookmarks                          | true   |

## `HTTPS` only, etc.


| Key                                                                            | -        | -   |
| ------------------------------------------------------------------------------ | -------- | --- |
| browser.fixup.fallback-to-https                                                | true     | ... |
| dom.security.https_only_mode                                                   | false    | ... |
| dom.security.https_only_mode.upgrade_local                                     | false    | ... |
| dom.security.https_only_mode.upgrade_onion                                     | false    | ... |
| dom.security.https_only_mode_break_upgrade_downgrade_endless_loop              | true     | ... |
| dom.security.https_only_mode_error_page_user_suggestions                       | false    | ... |
| dom.security.https_only_mode_ever_enabled                                      | false    | ... |
| dom.security.https_only_mode_ever_enabled_pbm                                  | false    | ... |
| dom.security.https_only_mode_https_first                                       | false    | ... |
| dom.security.https_only_mode_https_first_pbm                                   | false    | ... |
| dom.security.https_only_mode_pbm                                               | false    | ... |
| dom.security.https_only_mode_send_http_background_request                      | true     | ... |
| extensions.webextensions.ExtensionStorageIDB.migrated.https-everywhere@eff.org | true     | ... |
| network.dns.disablePrefetchFromHTTPS                                           | true     | ... |
| network.dns.httpssvc.http3_fast_fallback_timeout                               | 50       | ... |
| network.dns.httpssvc.reset_exclustion_list                                     | true     | ... |
| network.dns.upgrade_with_https_rr                                              | false    | ... |
| network.dns.use_https_rr_as_altsvc                                             | false    | ... |
| network.dns.use_https_rr_for_speculative_connection                            | false    | ... |
| network.websocket.allowInsecureFromHTTPS                                       | false    | ... |
| plugins.http_https_only                                                        | true     | ... |
| services.sync.prefs.sync.dom.security.https_only_mode                          | true     | ... |
| services.sync.prefs.sync.dom.security.https_only_mode_ever_enabled             | true     | ... |
| services.sync.prefs.sync.dom.security.https_only_mode_ever_enabled_pbm         | true     | ... |
| services.sync.prefs.sync.dom.security.https_only_mode_pbm                      | true ... |