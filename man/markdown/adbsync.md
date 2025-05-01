# adbsync -- Fastest way I've found to move files between my phone and my PC
{:data-section="gnfb"}

## Requirements

Install BetterADBSync using pipx: `pipx install BetterADBSync`. You will also need the Android Debug Bridge (adb) for
your distro.

## EXAMPLES

`adbsync push ~/Music /storage/emulated/0`
: Moves the Music directory and its contents to the Phone's "Home"

`adbsync pull /storage/emulated/0/Books ~`
: Moves the Books directory to the PC's Home

## IMPORTANT
- USB debugging in the Phone needs to be enabled
- Does not works with symlinks. You need to supply the target as an argument
