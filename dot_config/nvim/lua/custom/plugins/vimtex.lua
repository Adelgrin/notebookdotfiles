return {
  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.tex_flavor = 'latex'
    end,
  },

  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        texlab = {
          settings = {
            texlab = {
              build = {
                executable = 'latexmk',
                args = { '-pdf', '-interaction=nonstopmode', '-synctex=1', '%f' },
                onSave = true,
              },
              forwardSearch = {
                executable = 'zathura',
                args = { '--synctex-forward', '%l:1:%f', '%p' },
              },
              chktex = {
                onOpenAndSave = true,
                onEdit = false,
              },
            },
          },
        },
      },
    },
  },
}
