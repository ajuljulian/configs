local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = {"lua", "javascript", "python", "go", "elixir", "yaml", "html", "json", "dockerfile"}, -- one of "all", "maintained" ((parsers with maintainers),  or a list of languages
    sync_install = false,
    ignore_install = {""},
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {""}, -- list of languages that will be disabled
        additional_vim_regex_highlighting = true
    },
    indent = {enable = true, disable = {""}},
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner"
            }
        }
    }
}
