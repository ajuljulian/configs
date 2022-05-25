local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = {"lua", "javascript", "python", "go", "elixir"}, -- one of "all", "maintained" ((parsers with maintainers),  or a list of languages
    sync_install = false,
    ignore_install = {""},
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {""}, -- list of languages that will be disabled
        additional_vim_regex_highlighting = true
    },
    indent = {enable = true, disable = {""}}
}
