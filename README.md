# 💻 My Developer Terminal Setup (macOS + Warp + Zsh + Brew)

This repo contains my full terminal configuration as a fullstack + AI/ML developer.

---

## 🛠️ What's Included

- Zsh shell with:
  - [Zinit](https://github.com/zdharma-continuum/zinit) for plugin management
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k) prompt
  - Syntax highlighting, autosuggestions, alias tips
- Homebrew bundle to install:
  - Node, Python, Java, Go
  - Docker
  - AI/ML tools (Jupyter, Transformers, etc.)
  - Dev productivity tools (`fzf`, `exa`, `bat`, `lazygit`, etc.)
- Warp terminal and VSCode integration

---

## ⚡ Installation Steps

### 1. Clone the Repo

```bash
git clone https://github.com/krpraveen0/100x_dev_setup_mac.git
cd 100x_dev_setup_mac
```

### 2. Run the Brew Setup Script

```bash
chmod +x brew_bundle.sh
./brew_bundle.sh
```

---

## 🧩 Using This Setup

### 💡 Daily Usage

- `warp` — Use Warp as your terminal.
- `code .` — Launch VSCode in current directory.
- `lazygit` — TUI Git client.
- `zoxide` — Jump to folders with `z <dir>`.
- `jupyter lab` — Open JupyterLab for notebooks.
- `nvm use <version>` — Node version switch.
- `pyenv shell <version>` — Python version switch.

### ⚙️ Customize Plugins

To add plugins, edit `.zshrc`:

```zsh
zinit light <github/repo>
```

Then reload:

```bash
source ~/.zshrc
```

### 🌈 Customize Prompt (Powerlevel10k)

Re-run the prompt wizard:

```bash
p10k configure
```

---

## 📄 License

MIT License
