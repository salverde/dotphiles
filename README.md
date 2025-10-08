# dotphiles: My Configs Managed by GNU Stow

My personal collection of configuration files, meticulously managed and deployed with the power of GNU Stow, ensuring a clean home directory and portable setup across machines.

## Features

- **Modular Management:** Organize your configurations into discrete, logical packages, making them easy to manage, update, or remove independently.
- **Symlink-based Deployment:** Keep your home directory clean by symlinking configuration files from a central repository, avoiding clutter.
- **Version Control Friendly:** Track every change to your dotfiles with Git, allowing for easy rollbacks and a clear history of your environment.
- ⚙️ **Environment Portability:** Quickly set up your preferred development and user environment on any new machine with minimal effort.
- **Customizable Ignoring:** Utilize `.stow-local-ignore` to prevent specific files or directories from being symlinked, offering fine-grained control.

## Installation Guide

To get `dotphiles` up and running on your system, follow these steps. This setup assumes you have `git` and `stow` installed.

### Prerequisites

Ensure you have `git` and `stow` installed on your system.

- **Debian/Ubuntu:**
  ```bash
  sudo apt install git stow
  ```

### Step-by-Step Installation

1.  **Clone the Repository:**
    Clone the `dotphiles` repository into your home directory or a preferred location (e.g., `~/dotfiles`). It's recommended to place it in your home directory or a direct child of it for easier `stow` usage.

    ```bash
    git clone https://github.com/dotphiles/dotphiles.git ~/.dotphiles
    ```

2.  **Navigate to the Repository:**
    Change your current directory to the newly cloned `dotphiles` repository.

    ```bash
    cd ~/.dotphiles
    ```

3.  **Deploy Configurations with Stow:**
    For each configuration package (e.g., `zsh`, `nvim`, `tmux`), use `stow` to create symbolic links to your home directory.

    **Example: Deploying `nvim` (Neovim) configuration**

    ```bash
    stow nvim
    ```

    This command will create symlinks from `~/.dotfiles/nvim/.config/nvim` to `~/.config/nvim`, and so on, for all files within the `nvim` package that are not ignored.

    **Example: Deploying `zsh` configuration**

    ```bash
    stow zsh
    ```

    This might symlink `~/.dotfiles/zsh/.zshrc` to `~/.zshrc`.

    **Deploying all configurations (use with caution if you have existing files):**

    ```bash
    stow *
    ```

    This command will attempt to symlink all top-level directories within `~/.dotfiles` (excluding special files like `.git*`, `.stow-local-ignore`). If you have existing files that conflict, `stow` will warn you.

### Environment Configuration

Some configurations might require additional steps, such as setting up plugins or specific environment variables. Refer to the `README.md` within each specific configuration directory (e.g., `~/.dotfiles/nvim/README.md`) for detailed instructions.

## Usage Examples

Once installed, managing your dotfiles is straightforward.

### Basic Stow Usage

To deploy a specific configuration package:

```bash
cd ~/.dotfiles
stow <package_name>
# Example: stow awesome
```

To remove (unstow) a configuration package:

```bash
cd ~/.dotfiles
stow -D <package_name>
# Example: stow -D awesome
```

### Managing Submodules

This repository uses `.gitmodules` for managing external plugins or themes. After cloning, remember to initialize and update submodules:

```bash
git submodule update --init --recursive
```

### Ignoring Files

The `.stow-local-ignore` file allows you to specify patterns for files or directories that `stow` should _not_ symlink. This is useful for machine-specific configurations or sensitive data.

**Example `.stow-local-ignore` content:**

```
# Ignore local machine-specific settings
.localrc

# Ignore a directory that might contain sensitive info
secrets/
```

### Configuration Structure

The project structure is designed for modularity:

```
.
├── .config/            # Directory for XDG Base Directory Specification compliant configs
├── .gitignore          # Git ignore rules for the repository
├── .gitmodules         # Defines Git submodules
├── .stow-local-ignore  # Stow ignore rules
├── nvim/               # Neovim configurations
│   ├── .config/
│   │   └── nvim/
│   │       └── init.lua
│   └── README.md
├── zsh/                # Zsh shell configurations
│   └── .zshrc
├── tmux/               # Tmux configurations
│   └── .tmux.conf
└── ...                 # Other configuration directories
```
