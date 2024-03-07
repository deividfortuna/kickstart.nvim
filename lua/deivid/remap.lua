-- Open explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Set jk to escape from insert mode
vim.keymap.set('i', 'jk', '<Esc>')
-- Set Ctrl + c to escape from insert mode
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Move lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Move page up and down but keep cursor position
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Open terminal mode in a split on the bottom
vim.keymap.set('n', '<leader>tt', '<cmd>below 10sp +term<CR>', { desc = 'Open [T]erminal' })

-- Replace selected text with a provided value
vim.keymap.set('n', '<leader>rr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = '[R]eplace Word' })

-- Format buffer
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat buffer' })

----------------------------------------
-- Add Go error handling snippet
-- NOTE: 'o' starts a new line below the current one and enters insert mode.
-- 'if err != nil {<CR>}' types the text if err != nil { and then presses the <CR> (carriage return) key, which is equivalent to pressing Enter.
-- '<Esc>' exits insert mode and returns to normal mode.
-- 'O' starts a new line above the current one and enters insert mode.
-- 'return err' types the text return err.
-- '<Esc>' again exits insert mode and returns to normal mode.
vim.keymap.set('n', '<leader>ee', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>', { desc = 'Add Go [e]rror handling' })
