return {
  'xiyaowong/nvim-transparent',
    config = function()
        require('transparent').setup({
        enable = true,
        extra_groups = {
                'NeoTree',
            'TelescopeBorder',
            'TelescopePromptBorder',
            'TelescopeResultsBorder',
            'TelescopePreviewBorder',
        },
        })
    end
}
