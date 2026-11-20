# sinan/homebrew-tap

Homebrew casks for [Morpheus](https://notbad.engineering/morpheus), a macOS menu bar app that moves and resizes windows with modifier keys and the mouse.

```bash
brew install --cask sinan/tap/morpheus-app
```

Morpheus requires macOS 13 Ventura or later. It updates itself through Sparkle, so `brew upgrade` leaves it alone unless you pass `--greedy`.

The token is `morpheus-app` because `morpheus` is already a homebrew/core formula.

`brew uninstall --cask morpheus-app` removes the app. Add `--zap` to also delete its settings and license state.

The cask is bumped automatically on every Morpheus release.
