# 🖥️ Guia Completo de Atalhos — macOS Environment

> Referência rápida de todos os atalhos e comandos do ambiente configurado.
> Para quem vem do **VSCode** e **Eclipse**, mapeamentos familiares estão marcados com 🔵.

---

## Índice

1. [AeroSpace — Gerenciador de Janelas (Tiling)](#1--aerospace--gerenciador-de-janelas-tiling)
2. [Alfred — Lançador de Aplicativos](#2--alfred--lançador-de-aplicativos)
3. [Ghostty — Terminal](#3--ghostty--terminal)
4. [NeoVim + LazyVim — Editor de Código](#4--neovim--lazyvim--editor-de-código)
5. [Zsh & CLI Utils — Terminal Produtivo](#5--zsh--cli-utils--terminal-produtivo)
6. [Workflow Diário — Como Tudo se Conecta](#6--workflow-diário--como-tudo-se-conecta)

---

## 1. 🪟 AeroSpace — Gerenciador de Janelas (Tiling)

O AeroSpace organiza suas janelas automaticamente como um tiling WM (similar ao i3/Sway no Linux).
O modificador principal é **`Alt (⌥)`**.

### Navegação entre Janelas

| Atalho | Ação |
|---|---|
| `⌥ H` | Focar janela à **esquerda** |
| `⌥ J` | Focar janela **abaixo** |
| `⌥ K` | Focar janela **acima** |
| `⌥ L` | Focar janela à **direita** |
| `⌥ Tab` | Ciclar foco entre janelas do workspace atual |

### Mover Janelas

| Atalho | Ação |
|---|---|
| `⌥ ⇧ H` | Mover janela para **esquerda** |
| `⌥ ⇧ J` | Mover janela para **baixo** |
| `⌥ ⇧ K` | Mover janela para **cima** |
| `⌥ ⇧ L` | Mover janela para **direita** |

### Workspaces (Áreas de Trabalho)

| Atalho | Ação |
|---|---|
| `⌥ 1` a `⌥ 9` | Ir para o **workspace 1-9** |
| `⌥ ⇧ 1` a `⌥ ⇧ 9` | Mover janela atual para o **workspace 1-9** |
| `⌥ .` (ponto) | Alternar entre os 2 últimos workspaces (back-and-forth) |
| `⌥ ⇧ Tab` | Mover **workspace inteiro** para o próximo monitor |

### Layout e Redimensionamento

| Atalho | Ação |
|---|---|
| `⌥ /` | Alternar layout: **tiles horizontal ↔ vertical** |
| `⌥ ,` | Alternar layout: **accordion horizontal ↔ vertical** |
| `⌥ F` | **Fullscreen** (tela cheia) para a janela atual |
| `⌥ -` | Reduzir tamanho da janela (`-50px`) |
| `⌥ =` | Aumentar tamanho da janela (`+50px`) |

### Modo Service (Configuração avançada)

| Atalho | Ação |
|---|---|
| `⌥ ⇧ ;` | Entrar no **modo service** |
| `Esc` (no modo service) | Recarregar config e voltar ao modo normal |
| `R` (no modo service) | Resetar layout do workspace (flatten) |
| `F` (no modo service) | Alternar entre floating ↔ tiling |
| `Backspace` (no modo service) | Fechar todas as janelas exceto a atual |

> **💡 Dica**: Se as janelas ficarem bagunçadas, entre no modo service (`⌥ ⇧ ;`) e pressione `R` para resetar.

---

## 2. 🎩 Alfred — Lançador de Aplicativos

Alfred substitui o Spotlight com funcionalidades avançadas.

| Atalho | Ação |
|---|---|
| `⌘ Espaço` | Abrir o **Alfred** (busca universal) |

### Comandos no Alfred

| O que digitar | Ação |
|---|---|
| `nome do app` | Abrir um aplicativo |
| `open ~/Documents` | Abrir pasta no Finder |
| `find arquivo.txt` | Localizar arquivo no disco |
| `define palavra` | Buscar definição no dicionário |
| `13*37` | Calculadora rápida |
| `lock` | Bloquear a tela |
| `restart` | Reiniciar o Mac |
| `empty` | Esvaziar a lixeira |
| `quit App` | Forçar fechamento de app |
| `> comando` | Executar comando no terminal |

> **💡 Dica**: Instale workflows do Alfred para integrar com GitHub, Jira, etc.

---

## 3. 👻 Ghostty — Terminal

Ghostty é um terminal GPU-accelerated nativo para macOS.

### Atalhos Padrão do Ghostty

| Atalho | Ação |
|---|---|
| `⌘ T` | Nova aba |
| `⌘ W` | Fechar aba atual |
| `⌘ N` | Nova janela |
| `⌘ ⇧ [` | Aba anterior |
| `⌘ ⇧ ]` | Próxima aba |
| `⌘ 1-9` | Ir para aba específica |
| `⌘ D` | Split vertical (lado a lado) |
| `⌘ ⇧ D` | Split horizontal (empilhado) |
| `⌘ ⌥ ←/→/↑/↓` | Navegar entre splits |
| `⌘ ⇧ Enter` | Maximizar/restaurar split atual |
| `⌘ +` / `⌘ -` | Aumentar / Diminuir fonte |
| `⌘ 0` | Resetar tamanho da fonte |
| `⌘ K` | Limpar tela (clear) |
| `⌘ C` | Copiar (texto selecionado) |
| `⌘ V` | Colar |
| `⌘ F` | Buscar texto no terminal |
| `⌘ ,` | Abrir configurações |

> **💡 Configuração**: O arquivo de config fica em `~/.config/ghostty/config`

---

## 4. ✏️ NeoVim + LazyVim — Editor de Código

A **Leader key** (`<leader>`) é a tecla **Espaço**.
O LazyVim já vem com centenas de keymaps. Aqui estão os mais importantes, organizados por categoria.

### 4.1 Conceitos Fundamentais do Vim (para quem vem do VSCode)

#### Modos do Vim

| Tecla | Modo | Equivalente VSCode/Eclipse |
|---|---|---|
| `i` | **Insert** — digitar texto | Modo padrão de edição |
| `Esc` ou `jk` | **Normal** — navegar e comandos | - (não existe) |
| `v` | **Visual** — selecionar texto | Clicar e arrastar / Shift+setas |
| `V` | **Visual Line** — selecionar linhas inteiras | Ctrl+L |
| `:` | **Command** — executar comandos | Ctrl+Shift+P / Cmd+Shift+P |

> **⚠️ Regra de ouro**: No Vim, você fica a maior parte do tempo no modo **Normal**. Pressione `i` para editar e `Esc` para voltar.

#### Movimentação Básica (Modo Normal)

| Tecla | Ação | Equivalente VSCode |
|---|---|---|
| `h` `j` `k` `l` | ← ↓ ↑ → | Setas do teclado |
| `w` | Avançar uma **palavra** | Ctrl+→ |
| `b` | Voltar uma **palavra** | Ctrl+← |
| `0` | Início da **linha** | Home |
| `$` | Fim da **linha** | End |
| `gg` | Início do **arquivo** | Ctrl+Home |
| `G` | Fim do **arquivo** | Ctrl+End |
| `{` | Parágrafo anterior | - |
| `}` | Próximo parágrafo | - |
| `Ctrl+u` | Meia página acima | Page Up |
| `Ctrl+d` | Meia página abaixo | Page Down |
| `%` | Ir para o **par** do bracket/parêntese | - |
| `zz` | Centralizar cursor na tela | - |

#### Edição Básica (Modo Normal)

| Tecla | Ação | Equivalente VSCode |
|---|---|---|
| `i` | Inserir antes do cursor | Clicar e digitar |
| `a` | Inserir depois do cursor | - |
| `A` | Inserir no **fim da linha** | End → digitar |
| `I` | Inserir no **início da linha** | Home → digitar |
| `o` | Nova linha **abaixo** e entra em Insert | Enter |
| `O` | Nova linha **acima** e entra em Insert | Cmd+Shift+Enter |
| `x` | Deletar caractere sob o cursor | Delete |
| `dd` | Deletar **linha inteira** | Ctrl+Shift+K |
| `yy` | Copiar **linha inteira** | Ctrl+C (na linha) |
| `p` | Colar **abaixo** | Ctrl+V |
| `P` | Colar **acima** | - |
| `u` | **Undo** | Cmd+Z |
| `Ctrl+r` | **Redo** | Cmd+Shift+Z |
| `ciw` | Apagar palavra e editar (Change Inner Word) | Selecionar palavra + digitar |
| `ci"` | Apagar conteúdo dentro de `"` e editar | - |
| `di(` | Deletar conteúdo dentro de `()` | - |
| `.` | **Repetir** último comando | - (não existe!) |

### 4.2 Atalhos VSCode/Eclipse Customizados 🔵

> Estes atalhos foram adicionados via `plugins/vscode-keymaps.lua` e funcionam no Ghostty (que suporta tecla `⌘`).

#### Arquivos

| Atalho | Ação | Origem |
|---|---|---|
| 🔵 `⌘ S` | Salvar arquivo | VSCode |
| 🔵 `⌘ ⌥ S` | Salvar todos os arquivos | VSCode |
| 🔵 `⌘ Z` | Undo | VSCode |
| 🔵 `⌘ ⇧ Z` | Redo | VSCode |
| 🔵 `⌘ W` | Fechar buffer (aba) | VSCode |

#### Busca e Substituição

| Atalho | Ação | Origem |
|---|---|---|
| 🔵 `⌘ F` | Buscar no arquivo atual | VSCode |
| 🔵 `⌘ H` | Buscar e substituir no arquivo | VSCode |
| 🔵 `⌘ ⇧ F` | Buscar em todos os arquivos (grep) | VSCode |
| 🔵 `⌘ P` | Quick Open (ir para arquivo) | VSCode |
| 🔵 `⌘ ⇧ P` | Command Palette | VSCode |

#### Navegação de Código

| Atalho | Ação | Origem |
|---|---|---|
| 🔵 `F12` | Go to Definition | VSCode/Eclipse |
| 🔵 `⌘ F12` | Go to Type Definition | VSCode |
| 🔵 `Ctrl+F12` | Go to Implementation | Eclipse |
| 🔵 `Alt+F12` | Peek Definition / Hover | VSCode |
| 🔵 `Ctrl+G` | Go to Line | VSCode/Eclipse |

#### Refatoração

| Atalho | Ação | Origem |
|---|---|---|
| 🔵 `F2` | Rename Symbol | VSCode/Eclipse |
| 🔵 `⌘ .` | Code Action / Quick Fix | VSCode |
| 🔵 `⌘ ⇧ I` | Formatar documento | VSCode |
| 🔵 `Ctrl+⇧+F` | Formatar documento | Eclipse |
| 🔵 `⌘ /` | Toggle comentário | VSCode |

#### Edição de Linhas

| Atalho | Ação | Origem |
|---|---|---|
| 🔵 `⌥ ↑` / `⌥ ↓` | Mover linha para cima/baixo | VSCode/Eclipse |
| 🔵 `⌘ ⇧ D` | Duplicar linha | VSCode |
| 🔵 `Ctrl+⌥ ↓` | Duplicar linha | Eclipse |
| 🔵 `Ctrl+⇧+K` | Deletar linha | VSCode |

#### Painel e Interface

| Atalho | Ação | Origem |
|---|---|---|
| 🔵 `⌘ B` | Toggle File Explorer | VSCode |
| 🔵 `` ⌘ ` `` | Toggle Terminal | VSCode |
| 🔵 `⌘ ⇧ M` | Toggle Diagnostics/Problems | VSCode |
| 🔵 `⌘ \` | Split vertical | VSCode |
| 🔵 `⌘ ⇧ \` | Split horizontal | VSCode |
| 🔵 `⌘ ⇧ [` / `⌘ ⇧ ]` | Buffer anterior / próximo | VSCode |

### 4.3 Atalhos Nativos do LazyVim (Leader = Espaço)

#### Busca e Navegação (Snacks Picker)

| Atalho | Ação |
|---|---|
| `Space Space` | Smart file picker (arquivos recentes + projeto) |
| `Space f f` | Find Files |
| `Space f r` | Recent Files |
| `Space s g` | Grep (busca em todo o projeto) |
| `Space s w` | Grep palavra sob o cursor |
| `Space s s` | Buscar símbolos no arquivo (funções, classes) |
| `Space s S` | Buscar símbolos no workspace |
| `Space s k` | Buscar keymaps |
| `Space s h` | Buscar help |
| `Space /` | Grep no projeto (atalho rápido) |

#### Buffers (equivalente a abas)

| Atalho | Ação |
|---|---|
| `Space b b` | Listar buffers abertos |
| `Space b d` | Fechar buffer atual |
| `Space b o` | Fechar todos os outros buffers |
| `H` | Buffer anterior (modo Normal) |
| `L` | Próximo buffer (modo Normal) |

#### File Explorer (Neo-tree / Snacks Explorer)

| Atalho | Ação |
|---|---|
| `Space e` | Toggle file explorer (foco) |
| `Space E` | Toggle file explorer (cwd) |

Dentro do explorer:
| Tecla | Ação |
|---|---|
| `Enter` | Abrir arquivo |
| `a` | Criar novo arquivo |
| `d` | Deletar arquivo |
| `r` | Renomear arquivo |
| `c` | Copiar arquivo |
| `m` | Mover arquivo |
| `y` | Copiar nome do arquivo |
| `Y` | Copiar path completo |
| `P` | Colar arquivo |

#### LSP (IntelliSense)

| Atalho | Ação |
|---|---|
| `g d` | Go to **definition** |
| `g r` | Go to **references** |
| `g I` | Go to **implementation** |
| `g D` | Go to **declaration** |
| `g y` | Go to **type definition** |
| `K` | **Hover** documentation (info sobre o símbolo) |
| `Space c a` | **Code action** (quick fix) |
| `Space c r` | **Rename** símbolo |
| `Space c f` | **Format** arquivo |
| `] d` | Próximo **diagnóstico** (erro/warning) |
| `[ d` | Diagnóstico **anterior** |

#### Git

| Atalho | Ação |
|---|---|
| `Space g g` | Abrir **LazyGit** (interface git completa) |
| `Space g b` | Git **blame** (linha) |
| `Space g t` | Toggle git blame (custom — seu keymap) |
| `Space g h s` | **Stage** hunk |
| `Space g h r` | **Reset** hunk |
| `Space g h p` | **Preview** hunk |
| `] h` | Próximo hunk (mudança) |
| `[ h` | Hunk anterior |

> **💡 LazyGit**: É a interface mais poderosa. Use `Space g g` para abrir. Navegue com `h/j/k/l`, stage com `Space`, commit com `c`.

#### Terminal

| Atalho | Ação |
|---|---|
| `Space f t` | Terminal (floating) |
| `Ctrl+/` | Toggle terminal |

#### Windows (splits)

| Atalho | Ação |
|---|---|
| `Space w` + `h/j/k/l` | Mover foco para split esq/baixo/cima/dir |
| `Space w d` | Fechar split atual |
| `Space w -` | Split horizontal |
| `Space w \|` | Split vertical |
| `Ctrl+h` | Ir para split à esquerda |
| `Ctrl+j` | Ir para split abaixo |
| `Ctrl+k` | Ir para split acima |
| `Ctrl+l` | Ir para split à direita |

#### Trouble (Diagnósticos)

| Atalho | Ação |
|---|---|
| `Space x x` | Toggle Trouble (diagnósticos) |
| `Space x X` | Buffer diagnostics |
| `Space x L` | Location list |
| `Space x Q` | Quickfix list |

#### Outros Úteis

| Atalho | Ação |
|---|---|
| `Space l` | Abrir **Lazy** (gerenciador de plugins) |
| `Space q q` | Sair do NeoVim |
| `Space u c` | Trocar **colorscheme** |
| `Space u n` | Toggle **line numbers** |
| `Space u w` | Toggle **word wrap** |
| `Space u h` | Toggle **inlay hints** |
| `Space n` | Notification history |

### 4.4 Grep Visual Selection (Custom)

| Atalho | Ação |
|---|---|
| (Visual) `Space s g` | Selecione texto e pressione `Space s g` para buscar no projeto |

---

## 5. 🐚 Zsh & CLI Utils — Terminal Produtivo

### Aliases Configurados

| Alias | Comando real | Descrição |
|---|---|---|
| `v` | `nvim` | Abrir NeoVim |
| `vi` | `nvim` | Abrir NeoVim |
| `y` | `yazi` | File manager no terminal |
| `dcup` | `docker compose up` | Subir containers |
| `dcdown` | `docker compose down` | Parar containers |
| `dcbuild` | `docker compose build` | Build de containers |
| `dcrm` | `docker compose rm -f` | Remover containers |
| `dcall` | `dcrm && dcbuild && dcup` | Rebuild completo |

### Zoxide (cd inteligente)

Substitui o `cd` — ele aprende os diretórios que você mais usa.

| Comando | Ação |
|---|---|
| `z nome` | Ir para o diretório mais frequente que contém "nome" |
| `z projeto` | Ex: vai direto para `~/projects/meu-projeto` |
| `zi` | Busca interativa de diretórios com fzf |
| `z -` | Voltar para o diretório anterior |

### FZF (Fuzzy Finder)

| Atalho | Ação |
|---|---|
| `Ctrl+R` | Buscar no **histórico** de comandos (interativo) |
| `Ctrl+T` | Buscar **arquivo** no diretório atual |
| `Alt+C` | **cd** interativo para subdiretórios |
| `comando **Tab` | Autocomplete fuzzy (ex: `vim **Tab`) |

### Git Aliases (Oh My Zsh plugin)

| Alias | Comando | Ação |
|---|---|---|
| `gst` | `git status` | Status |
| `ga` | `git add` | Stage |
| `gc` | `git commit` | Commit |
| `gco` | `git checkout` | Checkout |
| `gb` | `git branch` | Listar branches |
| `gl` | `git pull` | Pull |
| `gp` | `git push` | Push |
| `gd` | `git diff` | Diff |
| `glg` | `git log --graph` | Log visual |
| `gcS "msg"` | `git commit -S -m` | Commit assinado (custom) |

---

## 6. 🔄 Workflow Diário — Como Tudo se Conecta

### Cenário: Começar a programar

```
1. ⌘ Espaço          → Alfred: abrir "Ghostty"
2. z meu-projeto     → Zoxide: navegar para o projeto
3. v .               → Abrir NeoVim no diretório
4. Space Space       → LazyVim: buscar arquivo para editar
5. ⌥ 2               → AeroSpace: abrir workspace 2 (browser?)
6. ⌥ 1               → AeroSpace: voltar para workspace 1 (código)
```

### Cenário: Editar código (vindo do VSCode)

```
1. ⌘ P               → Quick Open: buscar arquivo
2. F12                → Go to Definition
3. ⌘ .                → Code Action / Quick Fix
4. F2                 → Rename symbol
5. ⌘ ⇧ F              → Buscar texto em todo o projeto
6. ⌘ S                → Salvar
7. Space g g          → Abrir LazyGit para commit
```

### Cenário: Navegar entre janelas e workspaces

```
1. ⌥ 1               → Workspace 1 (Terminal + NeoVim)
2. ⌥ 2               → Workspace 2 (Browser)
3. ⌥ 3               → Workspace 3 (Chat / Docs)
4. ⌥ H/L             → Navegar entre janelas lado a lado
5. ⌥ F               → Fullscreen na janela atual
6. ⌥ .               → Voltar para o último workspace visitado
```

### Cenário: Docker workflow

```
1. dcup               → Subir containers
2. dcdown             → Derrubar containers
3. dcall              → Rebuild completo
4. colima start       → Iniciar runtime (se não estiver rodando)
```

---

## 📋 Cheat Sheet Resumido (Cole na parede!)

```
┌─────────── AeroSpace ───────────┐  ┌─────────── NeoVim ──────────────┐
│ ⌥ H/J/K/L    Navegar janelas   │  │ Space Space   Quick Open        │
│ ⌥ ⇧ H/J/K/L  Mover janelas    │  │ Space s g     Grep projeto      │
│ ⌥ 1-9        Trocar workspace  │  │ Space e       File Explorer     │
│ ⌥ ⇧ 1-9      Mover p/ wksp    │  │ Space g g     LazyGit           │
│ ⌥ F          Fullscreen        │  │ g d           Go to Definition  │
│ ⌥ /          Toggle layout     │  │ K             Hover Info        │
│ ⌥ .          Last workspace    │  │ Space c a     Code Action       │
│ ⌥ Tab        Ciclar janelas    │  │ F2            Rename            │
└─────────────────────────────────┘  └─────────────────────────────────┘
┌─────────── Terminal ────────────┐  ┌─────────── Alfred ──────────────┐
│ z nome       cd inteligente    │  │ ⌘ Espaço     Abrir Alfred       │
│ v / vi       Abrir NeoVim     │  │ app-name      Abrir app         │
│ Ctrl+R       Histórico (fzf)   │  │ find file     Buscar arquivo    │
│ Ctrl+T       Buscar arquivo    │  │ > cmd         Executar comando  │
│ dcup/dcdown  Docker compose    │  │ 13*37         Calculadora       │
└─────────────────────────────────┘  └─────────────────────────────────┘
```

---

> **📝 Nota**: Este guia reflete a configuração dos arquivos em `local-environment/`.
> Para editar os atalhos: AeroSpace (`~/.aerospace.toml`), NeoVim (`~/.config/nvim/lua/`), Ghostty (`~/.config/ghostty/config`).
