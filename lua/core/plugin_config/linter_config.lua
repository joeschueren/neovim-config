return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "bufNewFile"
  },
  config = function()
    local lint = require("lint");

    lint.linters_by_ft = {
	javascript = { "eslint_d" },
	typescript = { "eslint_d" },
	javascriptvue = { "eslint_d" },
	typescriptvue = { "eslint_d" },
	php = { "phpcs" }
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", {clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "BufWritePost", "InsertLeave"}, {
	group = lint_augroup,
	callback = function()
	  lint.try_lint()
	end
    })

    end

}
