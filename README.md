# WSL-Config ⚙
Repository containing my personal configuration files and stuff needed to setup new linux (and / or WSL2) distro.

## Installation
1. Clone repository
1. Change configurations to suit your needs
1. Open terminal (distro terminal)
1. Go to the cloned folder
1. Change permissions for **fresh-installation.sh** file

    ```
    chmod 755 ./fresh-installation.sh
    ```
    eventually with admin rights (sudo)

1. Run **fresh-installation.sh** to start the magic 🧙‍♂️

### Tips & tricks
- When updating configurations using e.g. vscode - remember to change line endings to unix.
- sometimes when using wsl2 some bug occurs - git always asks for credentials therefore it's good to run that command inside your wsl2 distro terminal
    ```
    git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"
    ```
    to use the same credential manager inside wsl as on windows.