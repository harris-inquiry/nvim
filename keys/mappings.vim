" Basic Key Mappings

" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" My remaps
nnoremap <C-l> zz
noremap <silent> <C-t> :NERDTreeToggle<CR>

" Emacs movement
noremap <C-f> <Right>
noremap! <C-f> <Right>
noremap <C-b> <Left>
noremap! <C-b> <Left>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-e> <End>
inoremap <C-a> <C-o>^
cnoremap <C-a> <Home>
noremap! <C-d> <Del>
inoremap <C-k> <C-o>d$
inoremap <C-_> <C-o>:undo<cr>
inoremap <M-_> <C-o>:redo<cr>
" Emacs escape
noremap <C-g> <Esc>
noremap! <C-g> <C-c>

" better movement
map 0 ^
map - $


" ERROR: Can't seem to map the '/' key
" noremap <C-/> :Commentary<cr>
" inoremap <C-/> <C-o>:Commentary<cr>


if exists('g:vscode')

  " Simulate same TAB behavior in VSCode
  nmap <Tab> :Tabnext<CR>
  nmap <S-Tab> :Tabprev<CR>

else

  " Better nav for omnicomplete
    " NOTE removed
  " inoremap <expr> <c-j> ("\<C-n>")
  " inoremap <expr> <c-k> ("\<C-p>")

  " Easy CAPS
  " inoremap <c-u> <ESC>viwUi
  " nnoremap <c-u> viwU<Esc>


  " Move selected line / block of text in visual mode
  " shift + k to move up
  " shift + j to move down
  xnoremap K :move '<-2<CR>gv-gv
  xnoremap J :move '>+1<CR>gv-gv


  " Alternate way to save
  " nnoremap <silent> <C-s> :w<CR>
  " Alternate way to quit
  " nnoremap <silent> <C-Q> :wq!<CR>
  " Use control-c instead of escape
  nnoremap <silent> <C-c> <Esc>
  " <TAB>: completion.
  inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

  " Terminal window navigation
  " tnoremap <C-h> <C-\><C-N><C-w>h
  " tnoremap <C-j> <C-\><C-N><C-w>j
  " tnoremap <C-k> <C-\><C-N><C-w>k
  " tnoremap <C-l> <C-\><C-N><C-w>l
  " tnoremap <Esc> <C-\><C-n>

  " Use alt + hjkl to resize windows
  " nnoremap <silent> <M-j>    :resize -2<CR>
  " nnoremap <silent> <M-k>    :resize +2<CR>
  " nnoremap <silent> <M-h>    :vertical resize -2<CR>
  " nnoremap <silent> <M-l>    :vertical resize +2<CR>

  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-Right> :vertical resize +2<CR>

  let g:elite_mode=0                      " Disable arrows"
  " Disable arrow movement, resize splits instead.
  if get(g:, 'elite_mode')
      nnoremap <C-Up>    :resize -2<CR>
      nnoremap <C-Down>  :resize +2<CR>
      nnoremap <C-Left>  :vertical resize -2<CR>
      nnoremap <C-Right> :vertical resize +2<CR>
  endif

endif
