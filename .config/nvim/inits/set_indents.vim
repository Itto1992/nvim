"set indent sizes and tab sizes
augroup fileTypeIndent
    autocmd!
    let indent_files = expand($HOME . '/.config/nvim/inits/autocmds/fileTypeIndent/*')
    let indent_files = split(indent_files, '\n')
    for file_path in indent_files
      execute 'source' . file_path
    endfor
augroup END
