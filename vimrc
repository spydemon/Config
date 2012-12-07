set background=dark			" Utilisation d'un fond sombre
set backspace=indent,eol,start	"Faire en sorte que backspace fonctionne
set cindent 					" Auto-indentation des codes sources
set cinoptions=:0,l1,t0,g0	" Options d'indentation
set cursorcolumn				" Colore la colonne sur la quelle est le curseur
set cursorline					" Colore la ligne sur la quelle est le curseur
set hlsearch					" Souligne les résultats d'une recherche
set foldmethod=marker		" Mascage du texte entre {{{ }}} 
"«set foldlevel=3				" Niveau d'indentation automatique
set formatoptions=tcqlron	" Il parait que c'est bien :x
set ignorecase 				" Les recherches ne respectent pas la casse
set laststatus=2				" Toujours afficher la barre de status
set mouse=a						" Active le support de la souris
set nocompatible				" Activer les spécificités à Vim sur Vi
set noexpandtab				" Utilisation de vrais tabs et pas d'espaces
set nu							" Numérotation des lignes
set scrolloff=5				" Garder toujours 5 lignes visibles dessus/dessou
set shiftwidth=3				" Indentation de 3 espaces
set showmatch 					" Affichage du curseur sur paire ouvrante ({[
set showmode					" Affichage du mode en cours
set smarttab
set tabstop=3 					" Nombre d'espaces dans une tabulation
set t_Co=256					" Utilisation de 256 couleurs 
set wildmenu					" Activation de l'autocomplétion pratique
set wildmode=list:longest	" Affiche le plus de char commum pour l'autocomp
set list
set listchars=tab:>-,trail:·

syntax on						" Coloration syntaxique
if &diff							" Mais pas avec vimdiff
	syntax off
endif

"Thème de couleurs
highligh Normal ctermbg=233
highlight SpellBad ctermbg=None ctermfg=Red cterm=Bold
highlight SpellCap ctermbg=None ctermfg=Red cterm=Bold
highlight Comment ctermfg=DarkGray
highlight Type ctermfg=Blue ctermbg=None cterm=Bold,Underline
highlight Statement ctermfg=Blue cterm=Bold
highlight Identifier ctermfg=31
highlight PreProc ctermfg=31
highlight Constant ctermfg=Blue
highlight NonText ctermbg=Black
highlight Special ctermfg=Blue cterm=Bold
highlight Cursor ctermbg=Black
highlight CursorColumn ctermbg=Black
highlight CursorLine ctermbg=Black cterm=None
highlight Directory ctermfg=31
highlight DiffAdd ctermfg=White ctermbg=Blue
highlight DiffChange ctermfg=White ctermbg=22
highlight DiffDel ctermfg=White ctermbg=125
highlight DiffText ctermfg=Yellow
highlight VertSplit ctermfg=Black ctermbg=DarkGray cterm=Bold
highlight Folded ctermfg=DarkGray ctermbg=233 cterm=Bold
highlight MatchPatern cterm=Underline
highlight LineNr ctermfg=DarkGray ctermbg=Black cterm=Bold
highlight Search ctermbg=None ctermfg=Yellow cterm=Bold
highlight SpecialKey ctermbg=None ctermfg=232
highlight NonText ctermbg=None ctermfg=232
highlight StatusLine ctermbg=Black ctermfg=Black
highlight StatusLineNC ctermbg=Black ctermfg=DarkGray
highlight TabLine ctermbg=Yellow ctermfg=Red

"Couleur du pointeur
if has("autocmd")
  "au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au VimEnter * silent !echo -ne "\033]12;DarkGrey\007" 
  au InsertLeave * silent !echo -ne "\033]12;233\007" 
  au VimLeave * silent !echo -ne "\033]12;Cyan\007"
endif

"Configuration des mots clefs à colorer aussi en C
syn keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t

"Abréviation sympathique pour en C
abbreviate uint uint8_t
