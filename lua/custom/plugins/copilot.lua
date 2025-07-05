-- lua/plugins/copilot.lua
return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = '<C-l>',
            next = '<M-]>', -- Alt-]
            prev = '<M-[>', -- Alt-[
            dismiss = '<C-e>',
          },
        },
        panel = { enabled = false },
      }
    end,
  },
  {
    'zbirenbaum/copilot-cmp',
    dependencies = {
      'zbirenbaum/copilot.lua',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
