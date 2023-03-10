vim.g.mapleader = " "

local keymap = vim.keymap

-- <CR> = enter
-- ---------- 插入模式 insert ---------- ---
keymap.set("i", "kk", "<ESC>")
keymap.set("i", "<leader>q", "<ESC>:q!<CR>")
keymap.set("i", "<leader>wq", "<ESC>:wq<CR>")
keymap.set("i", "<leader>w", "<ESC>:w!<CR>")

-- 跳到行首行尾 Jump to the end of the first line
keymap.set('i', '<C-h>', '<Esc>I', opt)
keymap.set('i', '<C-l>', '<Esc>A', opt)

-- ---------- 视觉模式  Visual ---------- ---
-- 单行或多行移动 Single-line or multi-line movement
keymap.set("v", "<leader>j", ":m '>+1<CR>gv=gv")
keymap.set("v", "<leader>k", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 Normal---------- ---
-- 窗口
keymap.set("n", "<leader>d", "<C-w>v") -- 水平新增窗口 Horizontal new window
keymap.set("n", "<leader>D", "<C-w>s") -- 垂直新增窗口 Vertical new window
keymap.set("n", "<leader>sc", "<C-w>c", opt) -- sc 关闭当前分屏 Close current split screen  (s = close)
keymap.set("n", "<leader>so", "<C-w>o", opt) -- so 关闭其他分屏 Close other split screens (o = other)

-- Alt + hjkl 在窗口之间跳转 Jump between windows
keymap.set('n', '<C-h>', '<C-w>h', opt)
keymap.set('n', '<C-j>', '<C-w>j', opt)
keymap.set('n', '<C-k>', '<C-w>k', opt)
keymap.set('n', '<C-l>', '<C-w>l', opt)
-- 取消高亮 Unhighlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer change buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")

-- ---------- plugins ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")



-- <leader>t 开启终端 create new Terminal
keymap.set('n', '<leader>t', ':sp | terminal<CR>', opt)
keymap.set('n', '<leader>T', ':vsp | terminal<CR>', opt)
-- <Esc> 退出终端 quit Terminal
keymap.set('t', '<Esc>', '<C-\\><C-N>', opt)
-- 终端窗口中进行窗口切换 Window switching in terminal window
keymap.set('t', '<C-h>', [[ <C-\><C-N><C-w>h ]], opt)
keymap.set('t', '<C-j>', [[ <C-\><C-N><C-w>j ]], opt)
keymap.set('t', '<C-k>', [[ <C-\><C-N><C-w>k ]], opt)
keymap.set('t', '<C-l>', [[ <C-\><C-N><C-w>l ]], opt)



-- H 移动到行首(Move to the beginning of the line)，L 移动到行尾(Move to end of line)
keymap.set('n', 'H', '^', opt)
keymap.set('n', 'L', 'g_', opt)

-- 上下滚动浏览(Scroll up and down)
keymap.set('n', '<C-U>', '4j', opt)
keymap.set('n', '<C-D>', '4k', opt)
-- 修改 Ctrl-u 和 Ctrl-d 的移动幅度 从默认的移动半瓶改为移动 9 行
keymap.set('n', '<C-u>', '9k', opt)
keymap.set('n', '<C-d>', '9j', opt)


-- 退出 quit
keymap.set('n', 'q', ':q<CR>', opt)
keymap.set('n', 'qq', ':q!<CR>', opt)
keymap.set('n', 'Q', ':qa!<CR>', opt)

