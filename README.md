# pierreprudh/homebrew-tap

Homebrew tap for my macOS apps.

## Install

```bash
brew install --cask --no-quarantine pierreprudh/tap/token-usage-island
```

`--no-quarantine` is required because the apps are ad-hoc signed rather than
notarized with an Apple Developer ID.

## Casks

| Cask | Description |
|------|-------------|
| [`token-usage-island`](Casks/token-usage-island.rb) | macOS notch HUD for AI-coding plan usage (Claude, Codex, OpenCode) — [repo](https://github.com/pierreprudh/token-usage-island) |
