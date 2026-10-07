# Captain Kill Switch — Homebrew tap

Homebrew tap for [Captain Kill Switch](https://captainkillswitch.com):
force-quit every running GUI application.

## Install

The menu-bar app (macOS):

```sh
brew install --cask captainkillswitch/tap/captain-kill-switch
```

The `cks` command-line tool (macOS / Linux):

```sh
brew install captainkillswitch/tap/cks
```

## Use

The app lives in the menu bar — click the red button.

```sh
cks            # preview the apps that will close, then confirm
cks --dry-run  # list what would be closed, kill nothing
cks --yes      # no prompt (for scripts / hotkeys)
cks --json     # machine-readable report on stdout
```

## How this tap updates

Both packages are regenerated automatically from the public release files at
`https://captainkillswitch.github.io/downloads/` — no manual edits needed;
don't PR version bumps here.

- `Formula/cks.rb` — by [`.github/workflows/update-formula.yml`](.github/workflows/update-formula.yml)
  (hourly) from the CLI manifest (`cli/manifest.json`), pointing at the
  immutable per-version assets on the downloads repo's `cli-vX.Y.Z` release so
  a new CLI release never invalidates the pinned sha256
- `Casks/captain-kill-switch.rb` — by [`.github/workflows/update-cask.yml`](.github/workflows/update-cask.yml)
  from the app manifest (`latest.json`) + the served DMG (the app itself
  auto-updates after install, so the pinned digest only matters at install time)
