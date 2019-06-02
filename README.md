# just-install-script
A personal script for initializing a new Windows computer with just-install/just-install

# How to use this script
1. Download
2. Right click > Edit
3. Change the list of programs defined in the fourth line. It starts with `set list=7zip arduino...` Change the list to your liking. Spaces separate different programs. [See the list here for all programs.](https://just-install.github.io/)
4. Save and exit.
5. Right click > Run as Administrator.
6. Answer the prompts. Enjoy!

# Caveats

#### Arduino

Arduino might prompt Windows to display driver warnings. You need to allow them for installation to continue.

#### PotPlayer

PotPlayer will have a pop-up during installation that does not require user input but is annoying nevertheless.

#### VeraCrypt

VeraCrypt does not have a silent option (dammit) so you need to click through the installer.

# To-dos
 - Run directly from GitHub repository, like just-install does with msiexec.exe
 - Or maybe PowerShell?
 - Dammit, make installation as easy as possible by adding a button to the README
 - Externalize program list in text file or something
