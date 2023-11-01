vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- When haivng visual selection we can move it using J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J apends line bellow the the current line, this keeps the cursors at the begging
vim.keymap.set("n", "J", "mzJ`z")
-- When using d/u to go up and down it will keep the cursor in the midle 
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- when doing seach, the search terms will stay in the middle 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- using leader+p it will deleete the highlighet thing in to the void and keep 
-- the previous copy preserved 
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- When using leader y it will add the selection to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Deleted the selection into the void so that we don't paste it by acidente or
-- overwritte current clipboard 
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Never press q 
vim.keymap.set("n", "Q", "<nop>")

-- Format current fille we are in
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- TODO learn how to use quickfix lists
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Using leader s will give quick substition for the work we are on 
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Using leader x we can make the current file we are in an executable 
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


























