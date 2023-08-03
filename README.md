# homebrew-NMAAHCmm
A brew formula to install the scripts from the nmaahc/nmaahcmm repository.

## How to Install
There are two ways to tap these formulas in terminal:
1. Run `brew tap nmaahc/nmaahcmm` and then run `brew install nmaahcmm`
2. Or run `brew install nmaahc/nmaahcmm/nmaahcmm`

### Note
1. This is to install version 0.0.6. If you ran into an `error fetch the directory failed`, homebrew is installing the order version, in which case, run `brew update-reset` to reset your tap to the most recent version.
2. If you had previously installed an earlier version on your workstation, run `brew upgrade nmaahc/nmaahcmm/nmaahcmm` to update your nmaahcmm to the most recent version.
3. Minor changes in Rename script since the release. To update:
    a. run `brewUp` then `nmaahcmm`
    b. run `brew install --HEAD nmaahcmm` (you might be prompt to run `brew unlink nmaahcmm` first
