local G = require('G')

G.map({
    -- 插入模式替换
    { 'i', 'jk',          '<ESC>',   {} },
    -- 设置s t 无效 ;=: ,重复上一次宏操作
    { 'n', 's',           '<nop>',   {} },
    { 'n', ';',           ':',       {} },
    { 'v', ';',           ':',       {} },
    { 'n', '+',           '<c-a>',   { noremap = true } },
    { 'n', '_',           '<c-x>',   { noremap = true } },
    { 'n', ',',           '@q',      { noremap = true } },

    { 'n', '\\',          ':nohlsearch<CR>', { noremap = true } },

    -- 快速删除
    { 'n', '<bs>',        '"_ciw',   { noremap = true } },
    { 'i', '<c-h>',       'col(".") == col("$") ? \'<esc>"_db"_xa\' : \'<esc>"_db"_xi\'', { noremap = true, expr = true } },

    -- ,打断
    { 'n', '<c-j>',       'f,a<cr><esc>', { noremap = true } },
    { 'i', '<c-j>',       '<esc>f,a<cr>', { noremap = true } },

    -- cmap
    { 'c', '<c-a>',       '<home>',  { noremap = true } },
    { 'c', '<c-e>',       '<end>',   { noremap = true } },
    { 'c', '<up>',        '<c-p>',   { noremap = true } },
    { 'c', '<down>',      '<c-n>',   { noremap = true } },

    -- c-s = :%s/
    -- { 'n', '<c-s>',       ':<c-u>%s/\\v//gc<left><left><left><left>', { noremap = true } },
    -- { 'v', '<c-s>',             ':s/\\v//gc<left><left><left><left>', { noremap = true } },

    -- only change text
    { 'v', '<BS>',        '"_d',     { noremap = true } },
    { 'n', 'x',           '"_x',     { noremap = true } },
    { 'v', 'x',           '"_x',     { noremap = true } },
    { 'n', 'Y',           'y$',      { noremap = true } },
    { 'v', 'c',           '"_c',     { noremap = true } },
    { 'v', 'p',           'pgvy',    { noremap = true } },
    { 'v', 'P',           'Pgvy',    { noremap = true } },

    -- VISUAL SELECT模式 s-tab tab左右缩进
    { 'v', '<',           '<gv',     { noremap = true } },
    { 'v', '>',           '>gv',     { noremap = true } },
    { 'v', '<s-tab>',     '<gv',     { noremap = true } },
    { 'v', '<tab>',       '>gv',     { noremap = true } },

    -- 重写Shift + 左右
    { 'v', '<s-right>',   'e',       { noremap = true } },
    { 'i', '<s-right>',   '<esc>ea', { noremap = true } },

    -- SHIFT + 方向 选择文本
    { 'i', '<s-up>',      '<esc>vk', { noremap = true } },
    { 'i', '<s-down>',    '<esc>vj', { noremap = true } },
    { 'n', '<s-up>',      'Vk',      { noremap = true } },
    { 'n', '<s-down>',    'Vj',      { noremap = true } },
    { 'v', '<s-up>',      'k',       { noremap = true } },
    { 'v', '<s-down>',    'j',       { noremap = true } },
    { 'n', '<s-left>',    '<left>vh',{ noremap = true } },
    { 'n', '<s-right>',   'vl',      { noremap = true } },

    -- CTRL SHIFT + 方向 快速跳转
    { 'i', '<c-s-up>',    '<up><up><up><up><up><up><up><up><up><up>', { noremap = true, silent = true } },
    { 'i', '<c-s-down>',  '<down><down><down><down><down><down><down><down><down><down>', { noremap = true, silent = true } },
    { 'i', '<c-s-left>',  '<home>',  { noremap = true, silent = true } },
    { 'i', '<c-s-right>', '<end>',   { noremap = true, silent = true } },
    { 'n', '<c-s-up>',    '10k',     { noremap = true } },
    { 'n', '<c-s-down>',  '10j',     { noremap = true } },
    { 'n', '<c-s-left>',  '^',       { noremap = true } },
    { 'n', '<c-s-right>', '$',       { noremap = true } },
    { 'v', '<c-s-up>',    '10k',     { noremap = true } },
    { 'v', '<c-s-down>',  '10j',     { noremap = true } },
    { 'v', '<c-s-left>',  '^',       { noremap = true } },
    { 'v', '<c-s-right>', '$h',      { noremap = true } },

    -- 选中全文 选中{ 复制全文
    { 'n', '<m-a>',       'ggVG',    { noremap = true } },
    { 'n', '<m-s>',       'vi{',     { noremap = true } },

    -- emacs风格快捷键 清空一行
    -- { 'n', '<c-u>',       'cc<Esc>', { noremap = true } },
    -- { 'i', '<c-u>',       '<Esc>cc', { noremap = true } },
    { 'i', '<c-a>',       '<Esc>I',  { noremap = true } },
    { 'i', '<c-e>',       '<Esc>A',  { noremap = true } },

    -- alt + 上 下移动行
    { 'n', '<m-up>',      ':m .-2<cr>',       { noremap = true, silent = true } },
    { 'n', '<m-down>',    ':m .+1<cr>',       { noremap = true, silent = true } },
    { 'i', '<m-up>',      '<Esc>:m .-2<cr>i', { noremap = true, silent = true } },
    { 'i', '<m-down>',    '<Esc>:m .+1<cr>i', { noremap = true, silent = true } },
    { 'v', '<m-up>',      ":m '<-2<cr>gv",    { noremap = true, silent = true } },
    { 'v', '<m-down>',    ":m '>+1<cr>gv",    { noremap = true, silent = true } },

    -- alt + key 操作
    { 'i', '<m-d>',       '<Esc>"_ciw',       { noremap = true } },
    { 'i', '<m-r>',       '<Esc>"_ciw',       { noremap = true } },
    { 'i', '<m-o>',       '<Esc>o',           { noremap = true } },
    { 'i', '<m-O>',       '<Esc>O',           { noremap = true } },
    { 'n', '<m-d>',       '"_diw',            { noremap = true } },
    { 'n', '<m-r>',       '"_ciw',            { noremap = true } },

    -- windows: sp 上下窗口 sv 左右分屏 sc关闭当前 so关闭其他 s方向切换
    { 'n', 'sv',          ':vsp<cr><c-w>w',   { noremap = true } },
    { 'n', 'sp',          ':sp<cr><c-w>w',    { noremap = true } },
    { 'n', 'sc',          ':close<cr>',       { noremap = true } },
    { 'n', 'so',          ':only<cr>',        { noremap = true } },
    { 'n', 's<Left>',     '<c-w>h',           { noremap = true } },
    { 'n', 's<Right>',    '<c-w>l',           { noremap = true } },
    { 'n', 's<Up>',       '<c-w>k',           { noremap = true } },
    { 'n', 's<Down>',     '<c-w>j',           { noremap = true } },
    { 'n', '<c-Space>',   '<c-w>w',           { noremap = true } },
    { 'n', 's=',          '<c-w>=',           { noremap = true } },
    { 'n', '<m-.>',       "winnr() <= winnr('$') - winnr() ? '<c-w>10>' : '<c-w>10<'", { noremap = true, expr = true } },
    { 'n', '<m-,>',       "winnr() <= winnr('$') - winnr() ? '<c-w>10<' : '<c-w>10>'", { noremap = true, expr = true } },

    -- buffers
    { 'n', 'W',           ':bw<cr>',          { noremap = true, silent = true } },
    { 'n', 'ss',          ':bn<cr>',          { noremap = true, silent = true } },
    { 'n', '<m-left>',    ':bp<cr>',          { noremap = true, silent = true } },
    { 'n', '<m-right>',   ':bn<cr>',          { noremap = true, silent = true } },
    { 'v', '<m-left>',    '<esc>:bp<cr>',     { noremap = true, silent = true } },
    { 'v', '<m-right>',   '<esc>:bn<cr>',     { noremap = true, silent = true } },
    { 'i', '<m-left>',    '<esc>:bp<cr>',     { noremap = true, silent = true } },
    { 'i', '<m-right>',   '<esc>:bn<cr>',     { noremap = true, silent = true } },

    -- 折叠
    { 'n', '-',           "foldlevel('.') > 0 ? 'za' : 'va{zf^'", { noremap = true, silent = true, expr = true } },
    { 'v', '-',           'zf', { noremap = true, silent = true } }
})

