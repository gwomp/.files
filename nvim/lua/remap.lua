vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Lexplore)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>tt", ":tabnew<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- PHP Error Log
vim.keymap.set(
    "n",
    "<leader>erl",
    "oerror_log(PHP_EOL . __FILE__ . \":\" . __LINE__ . \"\", 3, '/etc/php/8.1/dev.log');<Esc>F\"i"
)
