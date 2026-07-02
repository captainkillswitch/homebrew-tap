# Captain Kill Switch — Homebrew tap

Homebrew tap for **`cks`**, the command-line [Captain Kill Switch](https://captainkillswitch.com):
force-quit every running GUI application from your terminal.

## Install

```sh
brew install captainkillswitch/tap/cks
```

## Use

```sh
cks            # preview the apps that will close, then confirm
cks --dry-run  # list what would be closed, kill nothing
cks --yes      # no prompt (for scripts / hotkeys)
cks --json     # machine-readable report on stdout
```

## How this tap updates

`Formula/cks.rb` is regenerated automatically by
[`.github/workflows/update-formula.yml`](.github/workflows/update-formula.yml),
which reads the release manifest published at
`https://captainkillswitch.github.io/downloads/cli/manifest.json` by the
CLI release pipeline. No manual edits needed — don't PR version bumps here.
