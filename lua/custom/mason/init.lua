return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup {
      ensure_installed = {
        'tsserver',
        'html',
        'cssls',
        'tailwindcss',
        'eslint',
        'jsonls',
        'emmet_ls',
        'prettier',
        'gopls',
        'rust_analyzer',
        'pyright',
        'yamlls',
      },
      automatic_installation = true,
    }
  end,
}
