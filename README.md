# Homebrew tap for MacClean

Third-party [Homebrew](https://brew.sh) tap for [MacClean](https://thulem.com/en/) — a review-first Mac cleaner for WeChat/QQ media, System Data, Xcode, and AI caches.

> Not yet in the official `homebrew/cask` (notarization pending). This tap is the supported install path until then.

## Install

```bash
brew tap jinglings/macclean
brew install --cask macclean
```

Or in one step:

```bash
brew install --cask jinglings/macclean/macclean
```

## Requirements

- macOS Sonoma (14) or later
- Universal binary (Intel + Apple Silicon)

## Upgrade / uninstall

```bash
brew upgrade --cask macclean
brew uninstall --cask macclean
```

Zap leftover preference/cache files:

```bash
brew uninstall --cask --zap macclean
```

## Cask details

| Field | Value |
|-------|--------|
| Token | `macclean` |
| Version | 1.6 |
| Homepage | https://thulem.com/en/ |
| DMG | https://thulem.com/files/releases/MacClean-1.6.dmg |
| Bundle ID | `com.hr.MacClean` |

## Notes

- App updates may also arrive via Sparkle inside the app.
- Official upstream PR to `homebrew/homebrew-cask` will wait until notarization is confirmed.
