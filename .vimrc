colorscheme Monokai
set nocompatible
set hlsearch

nnoremap <c-z> :u<CR>
inoremap <c-z> <c-o>:u<CR>

nnoremap <c-a> <Home>
nnoremap <c-e> <End>

" Need to add `stty -ixon` to .bashrc for this to work
nnoremap <c-s> :Rg 
inoremap <c-s> <c-o>:Rg 

nnoremap <c-p> :GFiles<CR>
inoremap <c-p> <c-o>:GFiles<CR>
nnoremap <c-b> :Buffers<CR>
inoremap <c-b> <c-o>:Buffers<CR>

nnoremap <c-n> :ALENextWrap<CR>

call plug#begin()
    Plug 'sheerun/vim-polyglot'
    Plug 'preservim/nerdtree'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'ycm-core/YouCompleteMe'

    Plug 'dense-analysis/ale'
    let g:ale_linters_explicit = 1
    let g:ale_linters = {'python': ['flake8'], 'javascript': ['eslint']}
    let g:ale_lint_on_save = 1
    let g:ale_python_flake8_executable = '/home/matt/.pyenv/versions/3.7.0/bin/flake8'
    let g:ale_python_flake8_use_global = 1
    let g:ale_javascript_eslint_executable = '/home/matt/.nvm/versions/node/v17.2.0/bin/eslint'

    let g:ycm_auto_hover = ''

    " Plug 'arcticicestudio/nord-vim'

call plug#end()

