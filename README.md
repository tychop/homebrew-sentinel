# Homebrew Tap for Sentinel

A [Homebrew](https://brew.sh) tap for installing [Sentinel](https://github.com/tychop/sentinel-releases) - a macOS app for monitoring GitHub repositories, workflow runs, and pull requests.

## Installation

```bash
# Add this tap
brew tap tychop/sentinel

# Install Sentinel
brew install --cask sentinel-app
```

## Updating

```bash
brew update
brew upgrade --cask sentinel-app
```

## Uninstallation

```bash
brew uninstall --cask sentinel-app
brew untap tychop/sentinel
```

## Requirements

- macOS 15.0+ (Sequoia/Tahoe)
- GitHub CLI (`gh`) installed and authenticated

## First Launch

Since the app is signed with ad-hoc signing (not Developer ID), macOS will show a security warning on first launch:

1. **Option A**: Right-click the app and select "Open"
2. **Option B**: Go to System Settings > Privacy & Security > Security and click "Open Anyway"

This only needs to be done once.

## About Sentinel

Sentinel is a macOS application for monitoring GitHub repositories, workflow runs, and pull requests. Features include:

- Monitor local GitHub repositories
- Track GitHub Actions workflow runs
- View pull requests requiring your attention
- Open repositories in Terminal, Finder, or Fork
- Quick access to GitHub Actions and CI/CD status
- Home screen widgets

## Releases

Binaries are distributed from: https://github.com/tychop/sentinel-releases

Source code is in a private repository.
