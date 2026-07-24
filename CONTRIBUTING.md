# Contributing

This is a Homebrew tap for [Token Usage Island](https://github.com/pierreprudh/token-usage-island).

`main` is protected — only the maintainer pushes directly. To propose a change to a cask:

1. **Fork** this repository.
2. Edit the cask under `Casks/`.
3. Validate it: `brew style --cask <path>` and `brew audit --cask --online <token>`.
4. Open a **pull request** against `main`.

Cask version/checksum bumps for new releases are normally handled by the release automation
in the app repository.
