# edjeffreys/tap

Homebrew formulae for [shroud](https://github.com/edjeffreys/shroud), written by its release workflow.

Homebrew asks you to trust a third-party formula before it loads it:

```sh
brew trust --formula edjeffreys/tap/shroud
brew install edjeffreys/tap/shroud
```

| Formula | What you get |
|---|---|
| `shroud` | the latest release |
| `shroud-dev` | the newest `main`, prebuilt whenever its CI passes |
| `shroud --HEAD` | the newest `main`, built from source (needs Rust and Zig, which brew installs) |

`shroud` and `shroud-dev` both install `shroud`, so have one at a time. In a Brewfile:

```ruby
tap "edjeffreys/tap"
brew "edjeffreys/tap/shroud", trusted: true   # or "edjeffreys/tap/shroud-dev"
```
