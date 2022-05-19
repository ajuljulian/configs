local cmp = require "cmp"
local lspkind = require("lspkind")

local check_backspace = function()
    local col = vim.fn.col "." - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

cmp.setup(
    {
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
            end
        },
        window = {},
        mapping = {
            ["<CR>"] = cmp.mapping.confirm {select = true},
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-p>"] = cmp.mapping.select_prev_item {behavior = cmp.SelectBehavior.Select},
            ["<C-n>"] = cmp.mapping.select_next_item {behavior = cmp.SelectBehavior.Select},
            ["<C-e>"] = cmp.mapping {
                i = cmp.mapping.abort(),
                c = cmp.mapping.close()
            },
            ["<Tab>"] = cmp.mapping(
                function(fallback)
                    local luasnip = require "luasnip"
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expandable() then
                        luasnip.expand()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif check_backspace() then
                        fallback()
                    else
                        fallback()
                    end
                end,
                {"i", "s"}
            ),
            ["<S-Tab>"] = cmp.mapping(
                function(fallback)
                    local luasnip = require "luasnip"
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.expandable() then
                        luasnip.expand()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    elseif check_backspace() then
                        fallback()
                    else
                        fallback()
                    end
                end,
                {"i", "s"}
            )
        },
        formatting = {
            format = lspkind.cmp_format(
                {
                    --mode = 'symbol', -- show only symbol annotations
                    with_text = true,
                    maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
                    -- The function below will be called before any actual modifications from lspkind
                    -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                    before = function(entry, vim_item)
                        return vim_item
                    end
                }
            )
        },
        sources = {
            {name = "nvim_lsp"},
            {name = "luasnip"},
            {name = "buffer", keyword_length = 5}
        }
    }
)
-- Setup lspconfig.
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

local servers = {"pyright", "tsserver", "gopls", "sumneko_lua"}
for _, lsp in ipairs(servers) do
    require("lspconfig")[lsp].setup {
        capabilities = capabilities
    }
end
