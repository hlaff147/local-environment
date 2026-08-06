# Checklist de Configurações Manuais no macOS

Este documento detalha os passos manuais necessários para finalizar a configuração do ambiente no macOS após rodar `make all` na pasta `macos/`.

---

## 1. 🔒 Permissões de Acessibilidade e Privacidade

Acesse **Ajustes do Sistema > Privacidade e Segurança > Acessibilidade** (*System Settings > Privacy & Security > Accessibility*) e habilite os seguintes aplicativos:

- [ ] **AeroSpace** (Tiling window manager)
- [ ] **LinearMouse** (Gerenciamento de velocidade e direção do ponteiro/scroll)
- [ ] **BetterDisplay** (Gerenciamento avançado de monitores e resoluções)
- [ ] **Alfred** (Lançador de aplicativos e busca)

---

## 2. ⌨️ Atalhos de Teclado (Spotlight vs. Alfred)

Para substituir a busca nativa do Spotlight pelo Alfred com o atalho `Cmd + Espaço`:

1. Vá em **Ajustes do Sistema > Teclado > Atalhos de Teclado > Spotlight** (*System Settings > Keyboard > Keyboard Shortcuts > Spotlight*).
2. [ ] **Desmarque** a opção **"Mostrar busca do Spotlight"** (`Cmd + Espaço`).
3. Abra as preferências do **Alfred**.
4. [ ] Defina o **HotKey** do Alfred para `Cmd + Espaço`.

---

## 3. 🚀 Aplicativos de Segundo Plano & Início com o Sistema

Abra os utilitários instalados e garanta que iniciem junto com a sessão do usuário:

- [ ] **AeroSpace**: Abra o aplicativo pela primeira vez para ativar a integração de janelas.
- [ ] **Stats**: Abra o app, acesse as preferências e marque **Open at login**. Personalize os módulos da barra superior (CPU, Memória, Rede).
- [ ] **Doll**: Abra o app para permitir badges/ícones de notificação de apps na barra superior.
- [ ] **LinearMouse**: Configure a rolagem independente (inverter scroll do mouse sem alterar o trackpad) e marque para iniciar no login.

---

## 4. 🐳 Docker & Runtime Colima

No macOS, o Docker necessita de um runtime virtualizado. O script instalou o **Colima**.

1. [ ] Inicialize o Colima manualmente pela primeira vez:
   ```bash
   colima start
   ```
2. [ ] *(Opcional)* Para fazer o serviço do Colima iniciar automaticamente junto com o sistema:
   ```bash
   brew services start colima
   ```

---

## 5. 🔤 Fontes do Neovim & Terminal (Nerd Fonts)

O arquivo de fonte `DroidSansMNerdFont-Regular.otf` foi baixado em `~/.local/share/fonts`.

- [ ] Abra as configurações do **Ghostty** (ou do seu terminal padrão) e selecione a fonte instalada (*DroidSansMono Nerd Font*) para que os ícones do Neovim / Devicons funcionem corretamente.

---

## 6. 🔄 Reiniciar a Sessão (Log Out / Restart)

Algumas configurações globais executadas via `defaults write` (velocidade de repetição de teclas, ocultar dock, etc.) dependem do reinício da sessão.

- [ ] Encerre a sessão do usuário ou reinicie o macOS para aplicar todas as alterações de teclado e interface.
