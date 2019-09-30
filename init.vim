
"""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Interactive command execution
Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" Unite. The interface to rule almost everything
" Plug 'Shougo/unite.vim'

" Most Recently Used
Plug 'Shougo/neomru.vim'

" Add filetype glyphs (icons)
Plug 'ryanoasis/vim-devicons'
" Plug 'cj/vim-webdevicons'

" Command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

if has('nvim')
  " Asynchronous completion for neovim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  " Tern-based JavaScript editing support
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
else
  " Code completion
  Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
endif

" Emmet for vim
Plug 'mattn/emmet-vim'

" Code search and view tool
Plug 'dyng/ctrlsf.vim'

" BufExplorer quickly and easily switch between buffer
Plug 'jlanzarotta/bufexplorer'

" Tree explorer for vim.
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Asynchronous Lint Engine
Plug 'w0rp/ale'

" Cache file automatically
Plug 'MarcWeber/vim-addon-mw-utils'

" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Comment stuff out
Plug 'tpope/vim-commentary'

" Visually select larger regions of text using the same key combination
Plug 'terryma/vim-expand-region'

" Git wrapper
Plug 'tpope/vim-fugitive'

" SCSS syntax highlighting
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }

" Markdown syntax highlighting
" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Enable repeating supported plugin maps
Plug 'tpope/vim-repeat'

" ES2015 code snippets
Plug 'epilande/vim-es2015-snippets', { 'for': ['javascript', 'javascript.jsx'] }

" React code snippets
Plug 'epilande/vim-react-snippets', { 'for': ['javascript', 'javascript.jsx'] }

" Ultimate snippet solution
Plug 'SirVer/ultisnips'

" Snippet files for various programming languages
Plug 'honza/vim-snippets'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Display indention levels with vertical lines
Plug 'Yggdroot/indentLine'

" Tmux statusline generator with support for airline
Plug 'edkolev/tmuxline.vim'

" Undo history visualizer
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Preview colors in source code
Plug 'ap/vim-css-color'

" CSS3 syntax support
Plug 'hail2u/vim-css3-syntax'

" Vim motions on speed
" Plug 'easymotion/vim-easymotion'

" Shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'

" Instant Markdown previews
Plug 'suan/vim-instant-markdown', { 'for': 'markdown' }

" Jade syntax highlighting
" Plug 'digitaltoad/vim-pug', { 'for': ['jade', 'pug'] }

" Javascript indentation and syntax support
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }

" React JSX syntax highlighting & indenting
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }

" Yet Another JavaScript Syntax
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }

" ES.Next syntax
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }

" Syntax for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }

" Block comments based on a function signature
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }

" Syntax for styled-components
Plug 'fleischie/vim-styled-components', { 'for': ['javascript', 'javascript.jsx'] }

" Sublime Text style multiple selections
" Plug 'terryma/vim-multiple-cursors'

" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'

" Zoom in/out of windows
Plug 'troydm/zoomwintab.vim'

" Gotham colorscheme
" Plug 'whatyouhide/vim-gotham'

" Oceanic Next colorscheme
Plug 'mhartington/oceanic-next'

" Solarized colorscheme
" Plug 'altercation/vim-colors-solarized'

" Vim Orgmode
Plug 'jceb/vim-orgmode', { 'for': 'org' }

" Increment dates, times, and more
Plug 'tpope/vim-speeddating', { 'for': 'org' }

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" Tern-based JavaScript editing support
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

" EditorConfig for consistent coding style
Plug 'editorconfig/editorconfig-vim'

" Provides additional text objects
Plug 'wellle/targets.vim'

" Speed up Vim by updating folds only when called-for
Plug 'Konfekt/FastFold'

" Metrics, insights, and time tracking
" Plug 'wakatime/vim-wakatime'
Plug 'ryanoasis/vim-devicons'

Plug 'rainglow/vim'

Plug 'OmniSharp/omnisharp-vim'

Plug 'posva/vim-vue'

call plug#end()

" for c#/ omnisharp pluign
let g:OmniSharp_server_stdio = 1

" syntax for BufWrite/ read etc
au BufNewFile,BufRead *.py,*.php,*.rb,*.html,*.js,*.ts,*.md,*.jsx,*.java,*.css,*.scss,*.sass

"" jedi vim
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

"" deoplete
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"" airline theme
let g:airline_theme='<theme>' " <theme> is a valid theme name

"" gruvbox
set background=dark " use dark mode
" set background=light " uncomment to use light mode

" emmet vim
let g:user_emmet_leader_key='<C-z>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" linters
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\}


" Many of the linters (like eslint) can also fix your code, which is very handy.
let g:ale_fixers = {
  \    'javascript': ['eslint'],
  \    'typescript': ['prettier', 'tslint'],
  \    'vue': ['eslint'],
  \    'scss': ['prettier'],
  \    'html': ['prettier'],
  \    'reason': ['refmt']
\}
let g:ale_fix_on_save = 1

" Another useful feature is navigating to the next / previous error with ]r / [r.
nnoremap ]r :ALENextWrap<CR>     " move to the next ALE warning / error
nnoremap [r :ALEPreviousWrap<CR> " move to the previous ALE warning / error

" eslint 
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" skywind30000 async
autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %

" language server user_emmet_settings
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

" nerdtree
:let mapleader = "\<Space>"
nnoremap <Leader>a :echo "Hey there space"<CR>
nmap <leader>, :NERDTreeToggle<cr>

" vim jsx
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

" pangloss
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

set conceallevel=1

" set tab spaces
set tabstop=2 shiftwidth=2 expandtab

" set mous position
set mouse=a

"ultisnips

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" tomas molokai
let g:molokai_original = 1

" airline
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1
set t_Co=256

" set guifont for file icons
map <F3> <Esc>:set guifont=*<CR>

" terminal color
set termguicolors
syntax enable
" colorscheme monokai
" colorscheme molokai
" colorscheme NeoSolarized
" colorscheme tequila-sunrise
" colorscheme vimatomdark
colorscheme edge


