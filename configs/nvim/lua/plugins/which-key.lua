return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Tempo de espera (em milissegundos) antes de mostrar o guia visual.
    -- Reduzir isso para 150ms ou 200ms garante que o menu apareça quase instantaneamente
    -- e antes que o timeout do Neovim cancele a sequência de teclas.
    delay = 150,
    preset = "helix", -- O estilo "helix" mostra os comandos na parte inferior de forma super limpa e amigável
    win = {
      border = "single", -- Adiciona uma borda bonita na janela flutuante
    },
  },
}
