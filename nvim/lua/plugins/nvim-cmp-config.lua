local cmp = require "cmp"
local lspkind = require("lspkind")

cmp.setup(
    {
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
            end
        },
        window = {},
        mapping = {
            ["<C-n>"] = cmp.mapping.select_next_item {behavior = cmp.SelectBehavior.Insert},
            ["<C-p>"] = cmp.mapping.select_prev_item {behavior = cmp.SelectBehavior.Insert},
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<c-y>"] = cmp.mapping(
                cmp.mapping.confirm {
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true
                },
                {"i", "c"}
            ),
            ["<c-space>"] = cmp.mapping {
                i = cmp.mapping.complete(),
                c = function(_ --[[fallback]])
                    if cmp.visible() then
                        if not cmp.confirm {select = true} then
                            return
                        end
                    else
                        cmp.complete()
                    end
                end
            },
            ["<tab>"] = cmp.config.disable,
            -- Testing
            ["<c-q>"] = cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Replace,
                select = true
            }
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
