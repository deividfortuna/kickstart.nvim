-- Open explorer
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Set jk to escape from insert mode
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true, expr = false })

-- Move lines up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Open terminal mode in a split on the bottom
vim.keymap.set('n', '<leader>tt', '<cmd>below 10sp +term<CR>', { desc = 'Open [T]erminal' })

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
