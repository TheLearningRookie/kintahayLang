"appearance start
set t_Co=256
set tabstop=3					"sets tab into 3 spaces
set softtabstop=3
set shiftwidth=3
set expandtab
filetype plugin indent on
set nu						"displays numberline
set relativenumber				"displalys numberline in relation with the current position of the cursor
set cursorline					"highlights current position of the cursor <Esc>
set showmatch					"highlights search word
set hlsearch					"highlights search word
hi cursorline cterm=None ctermbg=237		"sets background color for the cursor's current position
hi normal ctermbg=235
hi linenr ctermfg=240
hi cursorlinenr ctermfg=72 term=bold
"appearance end
"mapping shortcuts start
inoremap lkj <Esc>				"escapes from insert mode
vnoremap lkj <Esc>				"escapes from visual mode 
nnoremap sdf :w <CR>				"writes recent inputted text
nnoremap wer ZQ <CR>				"exits vim's current session
"mapping shortcut end

"syntax colors start
hi Comment ctermfg=240
hi Constant ctermfg=242
hi Statement ctermfg=108
hi PreProc ctermfg=247
hi Type ctermfg=245
hi Special ctermfg=249
hi Identifier ctermfg=216
"hi Conditional ctermfg=234
"hi Repeat ctermfg=167
"hi Label ctermfg=173
"hi Operator ctermfg=174
"hi Keyword ctermfg=180
"hi Exception ctermfg=181
"hi Statement ctermfg=208
"syntax colors end



"+++++++++++++++++++++++
"+++guides start+++
"++++++++++++++++++++++
nnoremap ani :help syntax <CR>
inoremap <Space><Space> <Esc>/;;;<Enter>"_c3l
vnoremap <Space><Space> <Esc>/;;;<Enter>"_c3l
"+++++++++++++++++++++++
"+++guides end+++
"++++++++++++++++++++++

"+++++++++++++++++++++++
"+++automate start+++
"++++++++++++++++++++++
autocmd FileType php inoremap ;php <?php<Space>?><Esc>F?i
autocmd FileType html inoremap ;hml <!DOCTYPE html><CR><html><CR><head><CR><title></title><CR><BS></head><CR><body><CR>;;;<CR></body><CR><BS></html><Esc>5kf>li
"+++++++++++++++++++++++
"+++automate end+++
"++++++++++++++++++++++

nnoremap <silent> <S-k> :resize +1 <CR>
nnoremap <silent> <S-j> :resize -1 <CR>
nnoremap <silent> <S-l> :vertical resize +1 <CR>
nnoremap <silent> <S-h> :vertical resize -1 <CR>

"++++++++++++++++++++++
"+++netrw start+++
"++++++++++++++++++++++
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=2
let g:netrw_altv = 1
let g:netrw_winsize=10
let g:netrw_preview=1
augroup TestNetrw
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
"++++++++++++++++++++++
"+++netrw end+++
"++++++++++++++++++++++

nmap <C-H> <C-W>h
nmap <C-L> <C-W>l
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
