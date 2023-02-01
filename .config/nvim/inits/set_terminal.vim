"Open terminal at the bottom by :T
let shells = system('cat /etc/shells')
if match(shells, '/bin/zsh') !=# -1
  command! T split | wincmd j | resize 10 | terminal zsh
elseif match(shells, '/bin/bash') !=# -1
  command! T split | wincmd j | resize 10 | terminal bash
else
  command! T split | wincmd j | resize 10 | terminal sh
endif

"Open terminal with insert mode (by default, open terminal with normal mode)
autocmd TermOpen * startinsert
