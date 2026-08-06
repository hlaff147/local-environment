# Local Environment

Este repositório contém minhas configurações de sistema, dotfiles e scripts de automação para configuração de novos ambientes de desenvolvimento (macOS, Linux e futuramente Windows).

Este projeto é um fork/reorganização fortemente baseado no repositório de [zamariola/local-environment](https://github.com/zamariola/local-environment). Agradecimentos ao Zamariola pela excelente base de scripts e configurações!

---

## 📂 Estrutura do Repositório

O projeto é organizado por Sistema Operacional para facilitar a portabilidade e customização:

* **`configs/`**: Configurações globais/multiplataforma comuns a todos os SOs (Neovim/LazyVim, Ghostty, Alacritty, Helix, Zsh, k9s, IdeaVim).
* **`macos/`**: Scripts de automação (`Makefile`), atalhos de teclado, cheatsheets e configurações exclusivas do macOS (como o gerenciador de janelas AeroSpace).
* **`linux/`**: Scripts de automação (`Makefile`) e configurações exclusivas de distribuições Linux baseadas em Fedora/GNOME.
* **`windows/`**: Reservado para futuras configurações de ambiente no Windows.

---

## 🍏 Guia de Instalação no macOS

Siga os passos abaixo para configurar do zero uma máquina macOS usando este repositório.

### 1. Pré-requisitos e Preparação

Antes de rodar a automação, garanta que você tem o git instalado e os Xcode Command Line Tools.

1. Abra o Terminal padrão do macOS.
2. Instale as ferramentas de linha de comando do Xcode:
   ```bash
   xcode-select --install
   ```
3. Clone este repositório para a sua máquina (substitua pelo seu caminho de preferência):
   ```bash
   git clone https://github.com/hlaff147/local-environment.git ~/local-environment
   cd ~/local-environment
   ```

### 2. Executando a Instalação Automatizada

A instalação é orquestrada via `Makefile` na pasta `macos`. Ela instalará automaticamente:
* **Homebrew** (Gerenciador de pacotes)
* **Ghostty** (Emulador de terminal moderno)
* **Neovim** (com LazyVim e plugins customizados)
* **AeroSpace** (Tiling window manager para macOS)
* Ferramentas CLI: `fzf`, `ripgrep`, `zoxide`, `wget`, `docker`, `docker-compose`, `colima`, `openjdk`
* IDEs e utilitários: VS Code, Bruno, Android Studio, DBeaver, Stats, LinearMouse

Para iniciar:
```bash
cd macos
make all
```

*Nota: Durante o processo do Homebrew, poderá ser solicitada a senha de administrador (`sudo`) da sua máquina.*

### 3. Configurações Manuais Pós-Instalação

Algumas configurações do macOS exigem permissões do sistema ou passos manuais:

#### ⌨️ Teclado e Spotlight
1. Vá em **Ajustes do Sistema (System Settings) > Teclado (Keyboard) > Atalhos de Teclado (Keyboard Shortcuts)**.
2. Selecione **Spotlight** na barra lateral e desative o atalho padrão de busca (`Cmd + Espaço`) para liberar o atalho para o **Alfred** (instalado via Brew).
3. Para ativar a repetição rápida de teclas sem atraso, a automação executa as configurações no arquivo, mas pode ser necessário fazer logoff e logon novamente para que façam efeito.

#### 🪟 AeroSpace (Tiling Window Manager)
* O arquivo `.aerospace.toml` é copiado para `~/.aerospace.toml` durante a instalação.
* Quando o AeroSpace rodar pela primeira vez, dê a permissão de **Acessibilidade** requisitada nas configurações de Segurança do macOS.
* Para aprender os comandos do AeroSpace e os atalhos configurados, consulte o [KEYBINDINGS.md](file:///Users/betinho_pc/local-environment/macos/KEYBINDINGS.md).

#### 📊 Stats e LinearMouse
* Abra o **Stats** e o **LinearMouse** pela pasta de Aplicativos e conceda as permissões de Acessibilidade/Monitoramento de entrada solicitadas.
* O **LinearMouse** é excelente para remover a aceleração do cursor do mouse tradicional mantendo a rolagem natural e suave.

---

## 🛠️ Destaques da Configuração do Neovim (LazyVim)

A sua configuração do Neovim ([configs/nvim](file:///Users/betinho_pc/local-environment/configs/nvim)) conta com:

* **Telescope Git Worktree**: 
  - `<leader>gW` para alternar ou gerenciar Worktrees do Git.
  - `<leader>gw` para criar novas Worktrees do Git.
* **Barra Lateral (Neo-tree)**:
  - `<leader>e` ou `<leader>fe` para abrir/fechar o gerenciador de arquivos.
* **Visualização de Git Blame**:
  - `<leader>gt` para alternar a exibição da linha de blame do Git.
* **Executores de Código (Code Runners)**:
  - `<leader>rf` para salvar e rodar o arquivo atual detectando a linguagem automaticamente.
  - `<leader>rp`, `<leader>rg`, `<leader>rr`, `<leader>rj`, `<leader>rh` para rodar especificamente **Python**, **Go**, **Rust**, **Java** e **Haskell**, respectivamente.
  - *Nota: O terminal flutuante pausa após a execução, permitindo visualizar os outputs/erros e fecha ao pressionar `Enter`.*


---

## 🔗 Link para o Repositório Oficial
Este repositório pertence a **hlaff147**: [https://github.com/hlaff147/local-environment](https://github.com/hlaff147/local-environment)
