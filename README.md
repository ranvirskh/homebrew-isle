# homebrew-isle

Homebrew tap for [Isle](https://github.com/ranvirskh/isle-cc), a dynamic-island utility for the MacBook notch.

    brew install --cask ranvirskh/isle/isle

Or tap once and use the short name:

    brew tap ranvirskh/isle
    brew install --cask isle
    brew upgrade --cask isle      # after a new release
    brew uninstall --cask isle    # add --zap to remove preferences and logs too

Isle is signed with a local identity and is not notarized: on first open, right-click the app and choose Open.

## Maintaining the tap
After publishing a new Isle release (zip named `Isle-<version>.zip`), run `./update.sh <version>`, commit and push.
