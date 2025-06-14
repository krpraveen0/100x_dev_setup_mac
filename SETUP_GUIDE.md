# 🚀 Developer Terminal Setup Guide (macOS - Apple Silicon)

This guide walks you through setting up a productive terminal for fullstack and AI/ML development.

---

## 🧱 Prerequisites

- ✅ macOS (M1/M2/M3)
- ✅ Clean shell (Zsh preferred)
- ✅ Basic familiarity with terminal

---

## 1. 🔧 Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then add to shell:

```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

---

## 2. 📦 Clone This Repository

```bash
git clone https://github.com/krpraveen0/100x_dev_setup_mac.git
cd 100x_dev_setup_mac
```

---

## 3. 🛠 Run the Brew Installer

```bash
chmod +x brew_bundle.sh
./brew_bundle.sh
```

Installs:
- Languages: Node, Python, Java, Go
- Tools: Docker, Warp, VSCode
- CLI Boosts: `fzf`, `exa`, `bat`, `lazygit`, etc.

---

## 4. 🌀 Setup Zinit Plugin Manager

Zinit should already be installed by `.zshrc`. If not:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
```

---

## 5. 🎨 Configure Your Zsh Environment

Link or copy `.zshrc` to your home directory:

```bash
cp .zshrc ~/.zshrc
source ~/.zshrc
```

Powerlevel10k will run a visual prompt wizard.

---

## 6. ✅ Verify Everything Works

```bash
which brew
which zinit
zinit list
nvm --version
pyenv versions
docker --version
zoxide query .
```

---

## 🧠 Bonus Tips

- `p10k configure` – Customize your prompt
- `pipx list` – See installed Python tools
- `brew upgrade` – Keep your system up to date

---

## 🙌 You're All Set!

Happy coding! 🌟
