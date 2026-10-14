# Homebrew packaging for Lask

This repository is for publishing the Lask CLI via Homebrew.

## Purpose

This repository provides the Homebrew Formula and related assets needed to install Lask with:

```bash
brew tap lask-task-runner/tap
brew trust lask-task-runner/tap
brew install lask
```

## Contents

- Homebrew Formula for `lask`
- Release packaging notes
- Installation and maintenance guidance

## Notes

- This is a Homebrew tap repository for Lask.
- The Formula should point to the binary released from the main Lask repository.
- Keep the version and release asset URL in sync.

## Releasing

After lask `vX.Y.Z` is published, with [Lask](https://github.com/lask-task-runner/lask) and an authenticated [gh](https://cli.github.com/):

```bash
lask run release X.Y.Z
```

It rewrites `Formula/lask.rb` for that release, taking each archive's `sha256` from what GitHub records for it, then commits and pushes `main`. `lask run formula X.Y.Z` only writes the file.
