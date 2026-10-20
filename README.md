# Homebrew tap for NotchDeck

[NotchDeck](https://github.com/Mr-Who-Root/notchdeck) puts AI usage rings, media controls,
clipboard history, a file vault, your next meeting and a focus timer in a notch at the top
of your Mac's screen.

```sh
brew install --cask mr-who-root/notchdeck/notchdeck
```

NotchDeck updates itself (Sparkle), so `brew upgrade` is only needed if you prefer it.
To remove it and its settings: `brew uninstall --zap --cask notchdeck`.

NotchDeck is not notarized by Apple yet. If macOS says it cannot verify the app on first
launch, open **System Settings → Privacy & Security** and click **Open Anyway**.

The cask is rewritten by `make bump-cask` in the NotchDeck repository on every release.
