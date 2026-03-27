set number
set scrolloff=10
set showmode
set showcmd
set visualbell
set ignorecase
set smartcase
set incsearch
set hlsearch
set clipboard=

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2 " optional, makes pressing <Tab>/ <BS> insert/delete 4 spaces
set autoindent    " enable automatic indentation

" Keep visual mode after actions
vnoremap < < gv
vnoremap > > gv

" Actually yank
nnoremap y "+y
vnoremap y "+y

" Override cut/copy to explicitly use system clipboard
nnoremap \d "+d
vnoremap \d "+d
nnoremap \x "+x
vnoremap \x "+x

" Replace selected text without overwriting clipboard
vnoremap p "_dP
