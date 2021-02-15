 autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"MAPPINGS
map <C-s> :Files<CR>
map <leader>f :Rg<CR>
map <leader>s :!clear && shellcheck %<CR>
map <leader>b :Buffers<CR>

nmap <leader>e :CocCommand explorer<CR>

nmap <leader>g :GoDecls<CR>

" Deathly mappings
autocmd filetype go map <buffer> <S-s> <esc>:w<cr>:GoRun<cr>
autocmd filetype go map <buffer> <S-f> <esc>:w<cr>:GoTest<cr>
autocmd filetype sh map <buffer> <s-s> <esc>:w<cr>:exec '!sh' shellescape(@%, 1)<cr>
autocmd FileType python map <buffer> <S-s> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd filetype vim map <buffer> <s-s> <esc>:w<cr>:source %<cr>
autocmd filetype c map <buffer> <S-s> <esc>:w<cr>:w <CR> :!gcc % -o %< && ./%< <CR>

noremap <silent> <C-S-Left> :vertical resize +5<CR>
noremap <silent> <C-S-Right> :vertical resize -4<CR>

nmap <F7> :TagbarToggle<CR>

"same as   autocmd BufWritePre * %s/\s\+$//e   but in function
fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup Karedesu
  autocmd!
  autocmd BufWritePre * :call TrimWhitespace()
augroup END



" COC MAPPINGS
" https://github.com/neoclide/coc.nvim

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
