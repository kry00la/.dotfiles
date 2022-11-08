local cmp = require("cmp")
cmp.setup({
	sources = {
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
		{ name = "luasnip" },
	},
	snippet = {
		expand = function(args)
			-- Comes from vsnip
			local luasnip = prequire("luasnip")
			if not luasnip then
				return
			end
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		-- None of this made sense to me when first looking into this since there
		-- is no vim docs, but you can't have select = true here _unless_ you are
		-- also using the snippet stuff. So keep in mind that if you remove
		-- snippets you need to remove this select
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		-- I use tabs... some say you should stick to ins-completion but this is just here as an example
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
})
