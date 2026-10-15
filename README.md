# Homebrew packaging for Lask

This repository is for publishing the Lask CLI via Homebrew.

## Purpose

This repository provides the Homebrew Formula and related assets needed to install Lask with:

```bash
brew tap lask-task-runner/tap
brew trust lask-task-runner/tap
brew install lask
```

To install a particular release instead, name its versioned formula:

```bash
brew install lask-task-runner/tap/lask@0.9.0
```

A versioned formula is keg-only: it does not link `lask` into your `PATH`, so it can sit beside `lask` and other versions. Run it as `$(brew --prefix lask@0.9.0)/bin/lask`, or `brew link --force lask@0.9.0` (after `brew unlink lask`) to make it the `lask` on your `PATH`.

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

It rewrites `Formula/lask.rb` for that release and adds `Formula/lask@X.Y.Z.rb`, taking each archive's `sha256` from what GitHub records for it, then commits and pushes `main`. `lask run formula X.Y.Z` only writes the files.
