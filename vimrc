" 普通模式支持快捷键保存退出
nnoremap <silent><buffer> q  :pclose!<CR>:quit<CR>
nnoremap <C-x>  :x<CR>

nnoremap <silent> <C-q> :<C-u>:quit!<CR>
inoremap <silent> <C-q> <Esc>:<C-u>:quit!<CR>


" 定义快捷键前缀，即 <Leader>
let mapleader=";"

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
syntax enable
" ----------------------------------------------------------------------
" | General Setting								 					   |
" ----------------------------------------------------------------------

set nocompatible				" Don't make Vim vi-compatibile.

syntax on						" Enable syntax highlighting.

if has("autocmd")
    filetype plugin indent on
    "           |     |    |_____ Enable file type detection.
    "           |     |__________ Enable loading of indent file.
    "           |________________ Enable loading of plugin files.
endif

set autoindent				    " Copy indent to the new line.

set backspace=indent			" -
set backspace+=eol				"  | Allow `backspace`
set backspace+=start			" -  in insert mode.

set clipboard=unnamed			" -
"  | Use the system clipboard
if has("unnamedplus")			"  | as the default register.
    set clipboard+=unnamedplus	"  |
endif							" -

set cpoptions+=$				" when making a change, don't
" redisplay the line, and instead
" put a `$` sign at the end of
" the changed text.

set colorcolumn=73				" Highlight certain column(s).
set cursorline  				" Highlight the current line.
set encoding=utf-8 nobomb		" Use UTF-8 without BOM.
set history=5000				" Increase command line history.
set hlsearch					" Enable search highlighting.
set ignorecase					" Ignore case in search patterns.

set incsearch					" Highlight search pattern
" as it is being typed.

set laststatus=2				" Always show the status line.

set lazyredraw					" Do not redraw the screen while
" executing macros, registers
" and other commands that have
" not been typed.

set listchars=tab:▸\            " ┐
set listchars+=trail:·          " │ Use custom symbols to
set listchars+=eol:↴            " │ represent invisible characters.
set listchars+=nbsp:_           " ┘

set magic						" Enable extended regexp.
set mousehide					" Hide mouse pointer while typing.
set noerrorbells				" Disable error bells.

set nojoinspaces				" When using the join command,
" only insert a single space
" after a `.`, `?`, or `!`.

set nostartofline				" Kept the cursor on the same column.
set number						" Show line number.

set numberwidth=5				" Increase the minimal number of
" columns used for the `line number`.

set report=0					" Report the number of lines changed.
set ruler						" Show cursor position.

set scrolloff=5					" When scrolling, keep the cursor
" 5 lines below the top and 5 lines
" above the bottom of the screen.

set shortmess=aAItW				" Avoid all the hit-enter prompts.
set showcmd						" Show the command being typed.
set showmode					" Show current mode.
set spelllang=en_us				" Set the spellchecking language.

set smartcase					" Override `ignorecase` option
" if the search pattern contains
" uppercase characters.

set synmaxcol=2500				" Limit syntax highlighting (this
" avoids the very slow redrawing
" when files contain long lines).

set tabstop=4                   " ┐
set softtabstop=4               " │ Set global <TAB> settings.
set shiftwidth=4                " │
set expandtab                   " ┘

set ttyfast						" Enable fast terminal connection.
set virtualedit=all				" Allow cursor to be anywhere.

set visualbell                  " ┐
set noerrorbells                " │ Disable beeping and window flashing
set t_vb=                       " ┘ https://vim.wikia.com/wiki/Disable_beeping

set wildmenu					" Enable enhanced command-line
" completion (by hitting <TAB> in
" command mode, Vim will show the
" possible matches just above the
" command line with the first
" match highlighted).

set winminheight=0				" Allow windows to be squashed.


" ----------------------------------------------------------------------
" | Plugins                                                            |
" ----------------------------------------------------------------------

" Use Vundle to manage the Vim plugins.
" https://github.com/VundleVim/Vundle.vim

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Disable file type detection
" (this is required by Vundle).

filetype off


" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Include Vundle in the runtime path.

set rtp+=~/.vim/bundle/Vundle.vim
" set runtimepath+=~/.vim/plugins/Vundle.vim

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Initialize Vundle and specify the path
" where the plugins should be installed.

call vundle#begin("~/.vim/plugins")

Plugin 'gmarik/Vundle.vim'

" Plugin 'altercation/vim-colors-solarized'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'ap/vim-css-color'
Plugin 'chrisbra/unicode.vim'
Plugin 'godlygeek/tabular'
Plugin 'isRuslan/vim-es6'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kien/ctrlp.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/webapi-vim'
Plugin 'mhinz/vim-signify'
Plugin 'moll/vim-node'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'shougo/neocomplcache.vim'
Plugin 'shougo/neosnippet'
Plugin 'shougo/neosnippet-snippets'
Plugin 'shutnik/jshint2.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'wellle/targets.vim'
"	Plugin 'fatih/vim-go'
"	Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Re-enable file type detection
" (disabling it was required Vundle).

filetype on


" ----------------------------------------------------------------------
" | Plugins - Emmet                                                    |
" ----------------------------------------------------------------------

" Redefine trigger key for Emmet.
" http://docs.emmet.io/cheat-sheet/

let g:user_emmet_leader_key="<C-E>"

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Load custom Emmet snippets.
" http://docs.emmet.io/customization/snippets/

let g:user_emmet_settings = webapi#json#decode(join(readfile(expand("~/.vim/snippets/emmet.json")), "\n"))



" ----------------------------------------------------------------------
" | Plugins - Indent Guides                                            |
" ----------------------------------------------------------------------

" Set custom indent colors.
" https://github.com/nathanaelkane/vim-indent-guides#setting-custom-indent-colors

let g:indent_guides_auto_colors = 0

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd
            \ guibg=#00323D
            \ ctermbg=Magenta

autocmd VimEnter,Colorscheme * :hi IndentGuidesEven
            \ guibg=#073642
            \ ctermbg=DarkMagenta



" ----------------------------------------------------------------------
" | Plugins - Instant Markdown                                         |
" ----------------------------------------------------------------------

" Do not automatically launch the preview
" window when the markdown file is open.
" https://github.com/suan/vim-instant-markdown#ginstant_markdown_autostart

let g:instant_markdown_autostart = 0


" ----------------------------------------------------------------------
" | Plugins - Markdown                                                 |
" ----------------------------------------------------------------------

" Disable Folding.
" https://github.com/plasticboy/vim-markdown#disable-folding

let g:vim_markdown_folding_disabled=1


" ----------------------------------------------------------------------
" | Plugins - NeoComplCache                                            |
" ----------------------------------------------------------------------

" Enable `neocomplcache` by default.
" https://github.com/Shougo/neocomplcache.vim#installation

let g:neocomplcache_enable_at_startup=1

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Make `Tab` autocomplete.

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Make `Shift+Tab` insert `Tab` character.

inoremap <S-TAB> <C-V><TAB>


" ----------------------------------------------------------------------
" | Plugins - Signify                                                  |
" ----------------------------------------------------------------------

" Disable Signify by default.
" https://github.com/mhinz/vim-signify

let g:signify_disable_by_default=1


" ----------------------------------------------------------------------
" | Plugins - Syntastic                                                |
" ----------------------------------------------------------------------

" Inform Syntastic which checkers to use based on file types.
" https://github.com/scrooloose/syntastic#faq

let g:syntastic_javascript_checkers = [ 'eslint' ]

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" Disable syntax checking by default.

let g:syntastic_mode_map = {
            \ "active_filetypes": [],
            \ "mode": "passive",
            \ "passive_filetypes": []
            \}


" ----------------------------------------------------------------------
" | Helper Functions                                                   |
" ----------------------------------------------------------------------

function! GetGitBranchName()

    let branchName = ""

    if exists("g:loaded_fugitive")
        let branchName = "[" . fugitive#head() . "]"
    endif

    return branchName

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! StripTrailingWhitespaces()

    " Save last search and cursor position.

    let searchHistory = @/
    let cursorLine = line(".")
    let cursorColumn = col(".")

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Strip trailing whitespaces.

    %s/\s\+$//e

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Restore previous search history and cursor position.

    let @/ = searchHistory
    call cursor(cursorLine, cursorColumn)


endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! ToggleLimits()

    " [51,73]
    "
    "   * Git commit message
    "     http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
    "
    " [81]
    "
    "   * general use

    if ( &colorcolumn == "73" )
        set colorcolumn+=51,81
    else
        set colorcolumn-=51,81
    endif

endfunction

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function! ToggleRelativeLineNumbers()

    if ( &relativenumber == 1 )
        set number
    else
        set relativenumber
    endif

endfunction


" ----------------------------------------------------------------------
" | Automatic Commands                                                 |
" ----------------------------------------------------------------------

if has("autocmd")

    " Autocommand Groups.
    " http://learnvimscriptthehardway.stevelosh.com/chapters/14.html

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Automatically reload the configurations from
    " the `~/.vimrc` file whenever they are changed.

    augroup auto_reload_vim_configs

        autocmd!
        autocmd BufWritePost vimrc source $MYVIMRC

    augroup END

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Use relative line numbers.
    " http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/

    augroup relative_line_numbers

        autocmd!

        " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        " Automatically switch to absolute
        " line numbers when Vim loses focus.

        autocmd FocusLost * :set number

        " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        " Automatically switch to relative
        " line numbers when Vim gains focus.

        autocmd FocusGained * :set relativenumber

        " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        " Automatically switch to absolute
        " line numbers when Vim is in insert mode.

        autocmd InsertEnter * :set number

        " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        " Automatically switch to relative
        " line numbers when Vim is in normal mode.

        autocmd InsertLeave * :set relativenumber


    augroup END

    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    " Automatically strip the trailing
    " whitespaces when files are saved.

    augroup strip_trailing_whitespaces

        " List of file types for which the trailing whitespaces
        " should not be removed:

        let excludedFileTypes = []

        " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

        " Only strip the trailing whitespaces if
        " the file type is not in the excluded list.

        autocmd!
        autocmd BufWritePre * if index(excludedFileTypes, &ft) < 0 | :call StripTrailingWhitespaces()

    augroup END

endif



" ----------------------------------------------------------------------
" | Color Scheme                                                       |
" ----------------------------------------------------------------------

" set t_Co=256                   " Enable full-color support.

set background=dark            " Use colors that look good
" on a dark background.

" Set custom configurations for when the
" Solarized theme is used from Vim's Terminal mode.
"
" http://ethanschoonover.com/solarized/vim-colors-solarized#advanced-configuration

if !has("gui_running")
    let g:solarized_contrast = "high"
    let g:solarized_termcolors = 256
    let g:solarized_termtrans = 1
    let g:solarized_visibility = "high"
endif

" colorscheme solarized          " Use custom color scheme.
let g:hybrid_custom_term_colors = 1
colorscheme hybrid_material

" autocmd InsertLeave * se nocul
" autocmd InsertEnter * se cul

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"set rtp+=/Users/tristana/Dropbox/dotfiles/src/powerline/powerline/bindings/vim/
set laststatus=2
set t_Co=256


" crontab problem 解决
set backupskip=/tmp/*,/private/tmp/*

"let g:powerline_pycmd = 'py3'

" MacVim uses Homebrew python3 if installed, next try to use python.org binary
"if has('python3')
 "   command! -nargs=1 Py py3 <args>
  "  set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.7/Python
   " set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.7
"else
 "   command! -nargs=1 Py py <args>
  "  set pythondll=/usr/local/Frameworks/Python.framework/Versions/2.7/Python
   " set pythonhome=/usr/local/Frameworks/Python.framework/Versions/2.7
"endif
