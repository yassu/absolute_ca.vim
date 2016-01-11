let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplete_start_manual_complete) =neocomplete#mappings#manual_complete()=neocomplete#mappings#popup_post()
inoremap <silent> <Plug>(neocomplete_start_auto_complete) =neocomplete#mappings#auto_complete()=neocomplete#mappings#popup_post()
inoremap <silent> <Plug>(neocomplete_start_omni_complete) 
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_quick_match) unite#sources#neocomplete#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_complete) unite#sources#neocomplete#start_complete()
inoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
inoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
inoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
inoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
inoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
inoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
inoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
inoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
inoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
inoremap <Plug>TComment_s :TCommentAs =&ft_
inoremap <Plug>TComment_n :TCommentAs =&ft 
inoremap <Plug>TComment_a :TCommentAs 
inoremap <Plug>TComment_b :TCommentBlock mode=#
inoremap <Plug>TComment_i v:TCommentInline mode=#
inoremap <Plug>TComment_r :TCommentRight
inoremap <Plug>TComment_  :TComment 
inoremap <Plug>TComment_p :norm! m`vip:TComment``
inoremap <Plug>TComment_ :TComment
inoremap <silent> <expr> <Plug>(neosnippet_start_unite_snippet) unite#sources#neosnippet#start_complete()
inoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
nnoremap <silent>  o
snoremap  a<BS>
xmap  <Plug>(neosnippet_expand_target)
smap  <Plug>(neosnippet_expand_or_jump)
smap <expr>  neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)": "\	"
snoremap  a<BS>
nnoremap  
snoremap  <BS>
vmap 9 <Plug>TComment_9
nmap 9 <Plug>TComment_9
omap 9 <Plug>TComment_9
vmap 8 <Plug>TComment_8
nmap 8 <Plug>TComment_8
omap 8 <Plug>TComment_8
vmap 7 <Plug>TComment_7
nmap 7 <Plug>TComment_7
omap 7 <Plug>TComment_7
vmap 6 <Plug>TComment_6
nmap 6 <Plug>TComment_6
omap 6 <Plug>TComment_6
vmap 5 <Plug>TComment_5
nmap 5 <Plug>TComment_5
omap 5 <Plug>TComment_5
vmap 4 <Plug>TComment_4
nmap 4 <Plug>TComment_4
omap 4 <Plug>TComment_4
vmap 3 <Plug>TComment_3
nmap 3 <Plug>TComment_3
omap 3 <Plug>TComment_3
vmap 2 <Plug>TComment_2
nmap 2 <Plug>TComment_2
omap 2 <Plug>TComment_2
vmap 1 <Plug>TComment_1
nmap 1 <Plug>TComment_1
omap 1 <Plug>TComment_1
map ca <Plug>TComment_ca
map cc <Plug>TComment_cc
map s <Plug>TComment_s
map n <Plug>TComment_n
map a <Plug>TComment_a
map b <Plug>TComment_b
map i <Plug>TComment_i
map r <Plug>TComment_r
map   <Plug>TComment_ 
map p <Plug>TComment_p
vmap  <Plug>TComment_
nmap  <Plug>TComment_
omap  <Plug>TComment_
nnoremap  H :help 
nnoremap  h :help 
nnoremap    :quit
nnoremap  Q :write:quit
nnoremap  q :quit
nnoremap  w :write
nmap  / <Plug>(hopping-start)
nmap  ej :Ref webdict ej 
nmap  je :Ref webdict je 
nnoremap - i- [ ] 
nnoremap DD 0d$
nnoremap <silent> D ^d$
nnoremap J mzJ`z:delm z
xmap <silent> K <Plug>(ref-keyword)
nmap <silent> K <Plug>(ref-keyword)
xmap S <Plug>VSurround
nmap T [Tag]
nmap <silent> [Tag]p :tabprevious
xmap <silent> [Tag]p :tabprevious
omap <silent> [Tag]p :tabprevious
nmap <silent> [Tag]n :tabnext
xmap <silent> [Tag]n :tabnext
omap <silent> [Tag]n :tabnext
nmap <silent> [Tag]x :tabclose
xmap <silent> [Tag]x :tabclose
omap <silent> [Tag]x :tabclose
nmap <silent> [Tag]c :tablast | tabnew
xmap <silent> [Tag]c :tablast | tabnew
omap <silent> [Tag]c :tablast | tabnew
nnoremap <silent> [Tag]9 :tabnext9
nnoremap <silent> [Tag]8 :tabnext8
nnoremap <silent> [Tag]7 :tabnext7
nnoremap <silent> [Tag]6 :tabnext6
nnoremap <silent> [Tag]5 :tabnext5
nnoremap <silent> [Tag]4 :tabnext4
nnoremap <silent> [Tag]3 :tabnext3
nnoremap <silent> [Tag]2 :tabnext2
nnoremap <silent> [Tag]1 :tabnext1
nnoremap [Tag] <Nop>
nmap <silent> \mm :ShowMarksPlaceMark
xmap <silent> \mm :ShowMarksPlaceMark
omap <silent> \mm :ShowMarksPlaceMark
nmap <silent> \ma :ShowMarksClearAll
xmap <silent> \ma :ShowMarksClearAll
omap <silent> \ma :ShowMarksClearAll
nmap <silent> \mh :ShowMarksClearMark
xmap <silent> \mh :ShowMarksClearMark
omap <silent> \mh :ShowMarksClearMark
nmap <silent> \mo :ShowMarksOn
xmap <silent> \mo :ShowMarksOn
omap <silent> \mo :ShowMarksOn
nmap <silent> \mt :ShowMarksToggle
xmap <silent> \mt :ShowMarksToggle
omap <silent> \mt :ShowMarksToggle
nmap \ru :RuboCop
nmap \r <Plug>(quickrun)
xmap \r <Plug>(quickrun)
omap \r <Plug>(quickrun)
nmap \_s <Plug>TComment_\_s
xmap \_s <Plug>TComment_\_s
omap \_s <Plug>TComment_\_s
nmap \_n <Plug>TComment_\_n
xmap \_n <Plug>TComment_\_n
omap \_n <Plug>TComment_\_n
nmap \_a <Plug>TComment_\_a
xmap \_a <Plug>TComment_\_a
omap \_a <Plug>TComment_\_a
nmap \_b <Plug>TComment_\_b
xmap \_b <Plug>TComment_\_b
omap \_b <Plug>TComment_\_b
nmap \_r <Plug>TComment_\_r
xmap \_r <Plug>TComment_\_r
omap \_r <Plug>TComment_\_r
xmap \_i <Plug>TComment_\_i
nmap \_  <Plug>TComment_\_ 
xmap \_  <Plug>TComment_\_ 
omap \_  <Plug>TComment_\_ 
nmap \_p <Plug>TComment_\_p
xmap \_p <Plug>TComment_\_p
omap \_p <Plug>TComment_\_p
xmap \__ <Plug>TComment_\__
nmap \__ <Plug>TComment_\__
omap \__ <Plug>TComment_\__
nnoremap \gb :GitBlame
nnoremap \gp :GitPullRebase
nnoremap \gc :GitCommit
nnoremap \gA :GitAdd <cfile>
nnoremap \ga :GitAdd
nnoremap \gl :GitLog
nnoremap \gs :GitStatus
nnoremap \gD :GitDiff --cached
nnoremap \gd :GitDiff
nmap <silent> \w\t <Plug>VimwikiTabMakeDiaryNote
nmap <silent> \w\w <Plug>VimwikiMakeDiaryNote
nmap <silent> \w\i <Plug>VimwikiDiaryGenerateLinks
nmap <silent> \wi <Plug>VimwikiDiaryIndex
nmap <silent> \ws <Plug>VimwikiUISelect
nmap <silent> \wt <Plug>VimwikiTabIndex
nmap <silent> \ww <Plug>VimwikiIndex
nnoremap \T :enew
nnoremap \? :source ~/dotfiles/vimrc
nnoremap \. :e      ~/dotfiles/vimrc
nnoremap \U :UnderLine 
nnoremap \u :UnderLine
xmap \c gc
nmap \c :TlistToggle
nnoremap <silent> \v :VimShell -split-command=vsp -toggle
nnoremap <silent> \n :VimFilerCurrentDir
nnoremap <silent> \s :Switch
nmap \t :call g:toggle_taskpaper_win()
nmap \b <Plug>(openbrowser-open)
omap aLc <Plug>(textobj-latex-command-a)
xmap aLc <Plug>(textobj-latex-command-a)
omap aL( <Plug>(textobj-latex-inline-math-a)
xmap aL( <Plug>(textobj-latex-inline-math-a)
omap aLe <Plug>(textobj-latex-environment-a)
xmap aLe <Plug>(textobj-latex-environment-a)
omap aLs <Plug>(textobj-latex-section-a)
xmap aLs <Plug>(textobj-latex-section-a)
omap aL$ <Plug>(textobj-latex-dollar-math-a)
xmap aL$ <Plug>(textobj-latex-dollar-math-a)
omap aL[ <Plug>(textobj-latex-display-math-a)
xmap aL[ <Plug>(textobj-latex-display-math-a)
omap ar <Plug>(textobj-ruby-any-a)
xmap ar <Plug>(textobj-ruby-any-a)
omap af <Plug>(textobj-between-a)
xmap af <Plug>(textobj-between-a)
omap ai <Plug>(textobj-indent-a)
xmap ai <Plug>(textobj-indent-a)
omap aI <Plug>(textobj-indent-same-a)
xmap aI <Plug>(textobj-indent-same-a)
omap ae <Plug>(textobj-entire-a)
xmap ae <Plug>(textobj-entire-a)
omap a_ <Plug>(textobj-underscore-a)
xmap a_ <Plug>(textobj-underscore-a)
omap az <Plug>(textobj-fold-a)
xmap az <Plug>(textobj-fold-a)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nnoremap <silent> c\ c$
nnoremap <silent> c$ d$a
nnoremap <silent> c. ct.
nnoremap <silent> c" ct"
nnoremap <silent> c' ct'
nnoremap <silent> c] ct]
nnoremap <silent> c} ct}
nnoremap <silent> c) ct)
nnoremap <silent> c_ ct_
nmap ds <Plug>Dsurround
nnoremap <silent> d\ d$
nnoremap <silent> d. dt.
nnoremap <silent> d" dt"
nnoremap <silent> d' dt'
nnoremap <silent> d] dt]
nnoremap <silent> d} dt}
nnoremap <silent> d) dt)
nnoremap <silent> d_ dt_
nmap gx <Plug>NetrwBrowseX
xmap g> <Plug>TComment_Comment
nmap <silent> g>b <Plug>TComment_Commentb
nmap <silent> g>c <Plug>TComment_Commentc
nmap <silent> g> <Plug>TComment_Comment
xmap g< <Plug>TComment_Uncomment
nmap <silent> g<b <Plug>TComment_Uncommentb
nmap <silent> g<c <Plug>TComment_Uncommentc
nmap <silent> g< <Plug>TComment_Uncomment
xmap gc <Plug>TComment_gc
nmap <silent> gcb <Plug>TComment_gcb
nmap <silent> gcc <Plug>TComment_gcc
nmap <silent> gc9c <Plug>TComment_gc9c
nmap <silent> gc9 <Plug>TComment_gc9
nmap <silent> gc8c <Plug>TComment_gc8c
nmap <silent> gc8 <Plug>TComment_gc8
nmap <silent> gc7c <Plug>TComment_gc7c
nmap <silent> gc7 <Plug>TComment_gc7
nmap <silent> gc6c <Plug>TComment_gc6c
nmap <silent> gc6 <Plug>TComment_gc6
nmap <silent> gc5c <Plug>TComment_gc5c
nmap <silent> gc5 <Plug>TComment_gc5
nmap <silent> gc4c <Plug>TComment_gc4c
nmap <silent> gc4 <Plug>TComment_gc4
nmap <silent> gc3c <Plug>TComment_gc3c
nmap <silent> gc3 <Plug>TComment_gc3
nmap <silent> gc2c <Plug>TComment_gc2c
nmap <silent> gc2 <Plug>TComment_gc2
nmap <silent> gc1c <Plug>TComment_gc1c
nmap <silent> gc1 <Plug>TComment_gc1
nmap <silent> gc <Plug>TComment_gc
nnoremap gs :Switch
xmap gS <Plug>VgSurround
omap iLc <Plug>(textobj-latex-command-i)
xmap iLc <Plug>(textobj-latex-command-i)
omap iL( <Plug>(textobj-latex-inline-math-i)
xmap iL( <Plug>(textobj-latex-inline-math-i)
omap iLe <Plug>(textobj-latex-environment-i)
xmap iLe <Plug>(textobj-latex-environment-i)
omap iLs <Plug>(textobj-latex-section-i)
xmap iLs <Plug>(textobj-latex-section-i)
omap iL$ <Plug>(textobj-latex-dollar-math-i)
xmap iL$ <Plug>(textobj-latex-dollar-math-i)
omap iL[ <Plug>(textobj-latex-display-math-i)
xmap iL[ <Plug>(textobj-latex-display-math-i)
onoremap <silent> io :normal vio
xmap <silent> io <Plug>InnerOffside
omap ir <Plug>(textobj-ruby-any-i)
xmap ir <Plug>(textobj-ruby-any-i)
omap ic <Plug>TComment_ic
xmap ic <Plug>TComment_ic
omap if <Plug>(textobj-between-i)
xmap if <Plug>(textobj-between-i)
omap ii <Plug>(textobj-indent-i)
xmap ii <Plug>(textobj-indent-i)
omap iI <Plug>(textobj-indent-same-i)
xmap iI <Plug>(textobj-indent-same-i)
omap ie <Plug>(textobj-entire-i)
xmap ie <Plug>(textobj-entire-i)
omap i_ <Plug>(textobj-underscore-i)
xmap i_ <Plug>(textobj-underscore-i)
omap iz <Plug>(textobj-fold-i)
xmap iz <Plug>(textobj-fold-i)
xmap lp <Plug>(textobj-lastpaste-i)
omap lp <Plug>(textobj-lastpaste-i)
nnoremap mm :ShowMarksToggle
nnoremap qq :q
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Del> a<BS>
snoremap <BS> a<BS>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
onoremap <silent> <Plug>(textobj-latex-command-i) :call g:__textobj_latex.do_by_function("select-i","command","o")
vnoremap <silent> <Plug>(textobj-latex-command-i) :call g:__textobj_latex.do_by_function("select-i","command","v")
onoremap <silent> <Plug>(textobj-latex-command-a) :call g:__textobj_latex.do_by_function("select-a","command","o")
vnoremap <silent> <Plug>(textobj-latex-command-a) :call g:__textobj_latex.do_by_function("select-a","command","v")
onoremap <silent> <Plug>(textobj-latex-inline-math-a) :call g:__textobj_latex.do_by_pattern("select-a","inline-math","o")
vnoremap <silent> <Plug>(textobj-latex-inline-math-a) :call g:__textobj_latex.do_by_pattern("select-a","inline-math","v")
onoremap <silent> <Plug>(textobj-latex-inline-math-i) :call g:__textobj_latex.do_by_pattern("select-i","inline-math","o")
vnoremap <silent> <Plug>(textobj-latex-inline-math-i) :call g:__textobj_latex.do_by_pattern("select-i","inline-math","v")
onoremap <silent> <Plug>(textobj-latex-environment-i) :call g:__textobj_latex.do_by_function("select-i","environment","o")
vnoremap <silent> <Plug>(textobj-latex-environment-i) :call g:__textobj_latex.do_by_function("select-i","environment","v")
onoremap <silent> <Plug>(textobj-latex-environment-a) :call g:__textobj_latex.do_by_function("select-a","environment","o")
vnoremap <silent> <Plug>(textobj-latex-environment-a) :call g:__textobj_latex.do_by_function("select-a","environment","v")
onoremap <silent> <Plug>(textobj-latex-section-i) :call g:__textobj_latex.do_by_function("select-i","section","o")
vnoremap <silent> <Plug>(textobj-latex-section-i) :call g:__textobj_latex.do_by_function("select-i","section","v")
onoremap <silent> <Plug>(textobj-latex-section-a) :call g:__textobj_latex.do_by_function("select-a","section","o")
vnoremap <silent> <Plug>(textobj-latex-section-a) :call g:__textobj_latex.do_by_function("select-a","section","v")
onoremap <silent> <Plug>(textobj-latex-dollar-math-i) :call g:__textobj_latex.do_by_function("select-i","dollar-math","o")
vnoremap <silent> <Plug>(textobj-latex-dollar-math-i) :call g:__textobj_latex.do_by_function("select-i","dollar-math","v")
onoremap <silent> <Plug>(textobj-latex-dollar-math-a) :call g:__textobj_latex.do_by_function("select-a","dollar-math","o")
vnoremap <silent> <Plug>(textobj-latex-dollar-math-a) :call g:__textobj_latex.do_by_function("select-a","dollar-math","v")
onoremap <silent> <Plug>(textobj-latex-display-math-a) :call g:__textobj_latex.do_by_pattern("select-a","display-math","o")
vnoremap <silent> <Plug>(textobj-latex-display-math-a) :call g:__textobj_latex.do_by_pattern("select-a","display-math","v")
onoremap <silent> <Plug>(textobj-latex-display-math-i) :call g:__textobj_latex.do_by_pattern("select-i","display-math","o")
vnoremap <silent> <Plug>(textobj-latex-display-math-i) :call g:__textobj_latex.do_by_pattern("select-i","display-math","v")
onoremap <silent> <Plug>(textobj-ruby-any-i) :call g:__textobj_ruby.do_by_function("select-i","any","o")
vnoremap <silent> <Plug>(textobj-ruby-any-i) :call g:__textobj_ruby.do_by_function("select-i","any","v")
onoremap <silent> <Plug>(textobj-ruby-any-a) :call g:__textobj_ruby.do_by_function("select-a","any","o")
vnoremap <silent> <Plug>(textobj-ruby-any-a) :call g:__textobj_ruby.do_by_function("select-a","any","v")
nnoremap <Plug>(repl-run) :Repl
vnoremap <silent> <Plug>(quickrun) :QuickRun -mode v
nnoremap <silent> <Plug>(quickrun) :QuickRun -mode n
nnoremap <silent> <Plug>(quickrun-op) :set operatorfunc=quickrun#operatorg@
nnoremap <silent> <Plug>TComment_gc9c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc9cg@
nnoremap <silent> <Plug>TComment_gc8c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc8cg@
nnoremap <silent> <Plug>TComment_gc7c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc7cg@
nnoremap <silent> <Plug>TComment_gc6c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc6cg@
nnoremap <silent> <Plug>TComment_gc5c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc5cg@
nnoremap <silent> <Plug>TComment_gc4c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc4cg@
nnoremap <silent> <Plug>TComment_gc3c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc3cg@
nnoremap <silent> <Plug>TComment_gc2c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc2cg@
nnoremap <silent> <Plug>TComment_gc1c :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gc1cg@
vnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
nnoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
onoremap <Plug>TComment_9 :call tcomment#SetOption("count", 9)
vnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
nnoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
onoremap <Plug>TComment_8 :call tcomment#SetOption("count", 8)
vnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
nnoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
onoremap <Plug>TComment_7 :call tcomment#SetOption("count", 7)
vnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
nnoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
onoremap <Plug>TComment_6 :call tcomment#SetOption("count", 6)
vnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
nnoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
onoremap <Plug>TComment_5 :call tcomment#SetOption("count", 5)
vnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
nnoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
onoremap <Plug>TComment_4 :call tcomment#SetOption("count", 4)
vnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
nnoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
onoremap <Plug>TComment_3 :call tcomment#SetOption("count", 3)
vnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
nnoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
onoremap <Plug>TComment_2 :call tcomment#SetOption("count", 2)
vnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
onoremap <Plug>TComment_1 :call tcomment#SetOption("count", 1)
nnoremap <silent> <Plug>TComment_gc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcg@
xnoremap <Plug>TComment_gc :TCommentMaybeInline
nnoremap <silent> <Plug>TComment_gcb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gcbg@
nnoremap <silent> <Plug>TComment_gcc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_gccg@$
noremap <Plug>TComment_ic :call tcomment#TextObjectInlineComment()
xnoremap <silent> <Plug>TComment_Comment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | '<,'>TCommentMaybeInline!
nnoremap <silent> <Plug>TComment_Commentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentbg@
nnoremap <silent> <Plug>TComment_Commentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentcg@$
nnoremap <silent> <Plug>TComment_Comment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Commentg@
xnoremap <silent> <Plug>TComment_Uncomment :if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | call tcomment#SetOption("mode_extra", "U") | '<,'>TCommentMaybeInline
nnoremap <silent> <Plug>TComment_Uncommentb :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentbg@
nnoremap <silent> <Plug>TComment_Uncommentc :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentcg@$
nnoremap <silent> <Plug>TComment_Uncomment :call tcomment#ResetOption() | if v:count > 0 | call tcomment#SetOption("count", v:count) | endif | let w:tcommentPos = getpos(".") |set opfunc=TCommentOpFunc_Uncommentg@
noremap <Plug>TComment_\_s :TCommentAs =&ft_
noremap <Plug>TComment_\_n :TCommentAs =&ft 
noremap <Plug>TComment_\_a :TCommentAs 
noremap <Plug>TComment_\_b :TCommentBlock
noremap <Plug>TComment_\_r :TCommentRight
xnoremap <Plug>TComment_\_i :TCommentInline
noremap <Plug>TComment_\_  :TComment 
noremap <Plug>TComment_\_p vip:TComment
xnoremap <Plug>TComment_\__ :TCommentMaybeInline
nnoremap <Plug>TComment_\__ :TComment
snoremap <Plug>TComment_\__ :TComment
onoremap <Plug>TComment_\__ :TComment
noremap <Plug>TComment_ca :call tcomment#SetOption("as", input("Comment as: ", &filetype, "customlist,tcomment#Complete"))
noremap <Plug>TComment_cc :call tcomment#SetOption("count", v:count1)
noremap <Plug>TComment_s :TCommentAs =&ft_
noremap <Plug>TComment_n :TCommentAs =&ft 
noremap <Plug>TComment_a :TCommentAs 
noremap <Plug>TComment_b :TCommentBlock
noremap <Plug>TComment_i v:TCommentInline mode=I#
noremap <Plug>TComment_r :TCommentRight
noremap <Plug>TComment_  :TComment 
noremap <Plug>TComment_p m`vip:TComment``
vnoremap <Plug>TComment_ :TCommentMaybeInline
nnoremap <Plug>TComment_ :TComment
onoremap <Plug>TComment_ :TComment
onoremap <silent> <Plug>(textobj-between-i) :call g:__textobj_between.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-between-i) :call g:__textobj_between.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-between-a) :call g:__textobj_between.do_by_function("select-a","-","o")
vnoremap <silent> <Plug>(textobj-between-a) :call g:__textobj_between.do_by_function("select-a","-","v")
onoremap <silent> <Plug>(textobj-lastpaste-i) :call g:__textobj_lastpaste.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-lastpaste-i) :call g:__textobj_lastpaste.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-indent-i) :call g:__textobj_indent.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-indent-i) :call g:__textobj_indent.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-indent-a) :call g:__textobj_indent.do_by_function("select-a","-","o")
vnoremap <silent> <Plug>(textobj-indent-a) :call g:__textobj_indent.do_by_function("select-a","-","v")
onoremap <silent> <Plug>(textobj-indent-same-i) :call g:__textobj_indent.do_by_function("select-i","same","o")
vnoremap <silent> <Plug>(textobj-indent-same-i) :call g:__textobj_indent.do_by_function("select-i","same","v")
onoremap <silent> <Plug>(textobj-indent-same-a) :call g:__textobj_indent.do_by_function("select-a","same","o")
vnoremap <silent> <Plug>(textobj-indent-same-a) :call g:__textobj_indent.do_by_function("select-a","same","v")
onoremap <silent> <Plug>(textobj-entire-i) :call g:__textobj_entire.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-entire-i) :call g:__textobj_entire.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-entire-a) :call g:__textobj_entire.do_by_function("select-a","-","o")
vnoremap <silent> <Plug>(textobj-entire-a) :call g:__textobj_entire.do_by_function("select-a","-","v")
onoremap <silent> <Plug>(textobj-underscore-i) :call g:__textobj_underscore.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-underscore-i) :call g:__textobj_underscore.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-underscore-a) :call g:__textobj_underscore.do_by_function("select-a","-","o")
vnoremap <silent> <Plug>(textobj-underscore-a) :call g:__textobj_underscore.do_by_function("select-a","-","v")
onoremap <silent> <Plug>(textobj-fold-i) :call g:__textobj_fold.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-fold-i) :call g:__textobj_fold.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-fold-a) :call g:__textobj_fold.do_by_function("select-a","-","o")
vnoremap <silent> <Plug>(textobj-fold-a) :call g:__textobj_fold.do_by_function("select-a","-","v")
nnoremap <silent> <Plug>(vimshell_create) :VimShellCreate
nnoremap <silent> <Plug>(vimshell_switch) :VimShell
nnoremap <silent> <Plug>(vimfiler_simple) :VimFilerSimple
nnoremap <silent> <Plug>(vimfiler_create) :VimFilerCreate
nnoremap <silent> <Plug>(vimfiler_switch) :VimFiler
nnoremap <silent> <Plug>(vimfiler_split_create) :VimFilerSplit
xnoremap <silent> <Plug>(neosnippet_register_oneshot_snippet) :call neosnippet#mappings#_register_oneshot_snippet()
xnoremap <silent> <Plug>(neosnippet_expand_target) :call neosnippet#mappings#_expand_target()
xnoremap <silent> <Plug>(neosnippet_get_selected_text) :call neosnippet#helpers#get_selected_text(visualmode(), 1)
snoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#mappings#jump_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#mappings#expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#mappings#jump_or_expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#mappings#expand_or_jump_impl()
map <silent> <Plug>(hopping-start) :HoppingStart
vnoremap <silent> <Plug>(ref-keyword) :call ref#K('visual')
nnoremap <silent> <Plug>(ref-keyword) :call ref#K('normal')
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
vnoremap <silent> <Plug>(openbrowser-smart-search) :call openbrowser#_keymapping_smart_search('v')
nnoremap <silent> <Plug>(openbrowser-smart-search) :call openbrowser#_keymapping_smart_search('n')
vnoremap <silent> <Plug>(openbrowser-search) :call openbrowser#_keymapping_search('v')
nnoremap <silent> <Plug>(openbrowser-search) :call openbrowser#_keymapping_search('n')
vnoremap <silent> <Plug>(openbrowser-open) :call openbrowser#_keymapping_open('v')
nnoremap <silent> <Plug>(openbrowser-open) :call openbrowser#_keymapping_open('n')
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
onoremap <silent> <Plug>(gista- :call neobundle#autoload#_mapping('<Plug>(gista-', 'vim-gista', 'o')
xnoremap <silent> <Plug>(gista- :call neobundle#autoload#_mapping('<Plug>(gista-', 'vim-gista', 'x')
nnoremap <silent> <Plug>(gista- :call neobundle#autoload#_mapping('<Plug>(gista-', 'vim-gista', 'n')
imap  
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr>  neocomplete#smart_close_popup()."\"
imap  <Plug>(neosnippet_expand_or_jump)
imap <expr>  neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)": pumvisible()? "": "\	"
imap  <Plug>Isurround
inoremap  
imap 9 <Plug>TComment_9
imap 8 <Plug>TComment_8
imap 7 <Plug>TComment_7
imap 6 <Plug>TComment_6
imap 5 <Plug>TComment_5
imap 4 <Plug>TComment_4
imap 3 <Plug>TComment_3
imap 2 <Plug>TComment_2
imap 1 <Plug>TComment_1
imap s <Plug>TComment_s
imap n <Plug>TComment_n
imap a <Plug>TComment_a
imap b <Plug>TComment_b
imap i <Plug>TComment_i
imap r <Plug>TComment_r
imap   <Plug>TComment_ 
imap p <Plug>TComment_p
imap  <Plug>TComment_
abbr tl - [ ]
let &cpo=s:cpo_save
unlet s:cpo_save
set ambiwidth=double
set autoindent
set background=dark
set backspace=indent,eol,start
set clipboard=unnamedplus
set comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
set commentstring=\"%s
set completeopt=preview,menuone
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=ja
set history=50
set hlsearch
set incsearch
set iskeyword=@,48-57,_,-,:,192-255
set laststatus=2
set listchars=tab:>>,trail:.
set nomodeline
set nrformats=
set operatorfunc=TCommentOpFunc_gc
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,~/.vim/bundle/vimproc/,~/.vim/bundle/unite.vim/,~/.vim/bundle/webapi-vim/,~/.vim/bundle/open-browser.vim/,~/.vim/bundle/vim-operator-user/,~/.vim/bundle/vim-startify/,~/.vim/bundle/vim-template/,~/.vim/bundle/previm/,~/.vim/bundle/vimwiki/,~/.vim/bundle/taskpaper.vim/,~/.vim/bundle/gruvbox/,~/.vim/bundle/ag.vim/,~/.vim/bundle/vim-surround/,~/.vim/bundle/lexima.vim/,~/.vim/bundle/renamer.vim/,~/.vim/bundle/vim-ref/,~/.vim/bundle/vim-hopping/,~/.vim/bundle/switch.vim/,~/.vim/bundle/vim-alignta/,~/.vim/bundle/neosnippet-snippets/,~/.vim/bundle/neocomplete/,~/.vim/bundle/neosnippet.vim/,~/.vim/bundle/vim-localrc/,~/.vim/bundle/vimfiler.vim/,~/.vim/bundle/mru/,~/.vim/bundle/memolist.vim/,~/.vim/bundle/indentLine/,~/.vim/bundle/vim-trailing-whitespace/,~/.vim/bundle/scons.vim/,~/.vim/bundle/gnuplot.vim/,~/.vim/bundle/maxima.vim/,~/.vim/bundle/vim-blockdiag-series/,~/.vim/bundle/plantuml-syntax/,~/.vim/bundle/seiya.vim/,~/.vim/bundle/vimshell.vim/,~/.vim/bundle/vim-textobj-user/,~/.vim/bundle/vim-textobj-fold/,~/.vim/bundle/vim-textobj-underscore/,~/.vim/bundle/vim-textobj-entire/,~/.vim/bundle/vim-textobj-indent/,~/.vim/bundle/textobj-lastpaste/,~/.vim/bundle/vim-textobj-between/,~/.vim/bundle/git-vim/,~/.vim/bundle/committia.vim/,~/.vim/bundle/vimdoc-ja/,~/.vim/bundle/tcomment_vim/,~/.vim/bundle/taglist.vim/,~/.vim/bundle/auto-ctags.vim/,~/.vim/bundle/vim-quickrun/,~/.vim/bundle/repl.vim/,~/.vim/bundle/vim-rubocop/,~/.vim/bundle/vim-ruby/,~/.vim/bundle/vim-rake/,~/.vim/bundle/vim-textobj-ruby/,~/.vim/bundle/vim-filetype-haskell/,~/.vim/bundle/vim2hs/,~/.vim/bundle/twibill.vim/,~/.vim/bundle/bitly.vim/,~/.vim/bundle/w3m.vim/,~/.vim/bundle/vim-gyazo/,~/.vim/bundle/vim-textobj-latex/,~/.vim/bundle/vimtex/,~/.vim/bundle/vim-showmarks/,~/.vim/bundle/.neobundle,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundle/neobundle.vim/,~/.vim/bundle/indentLine/after,~/.vim/bundle/vim2hs/after,~/.vim/bundle/vimtex/after
set scrolloff=3
set shiftwidth=2
set showtabline=2
set smartindent
set softtabstop=2
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabline=%!<SNR>8_my_tabline()
set tabstop=2
set textwidth=100
set wildignore=*.o,*.obj,*~,*.pyc,.git,.tmp,.coverage,__pycache__/,*.egg,*.egg-info,*.png,*.jpg,*.gif,*.pdf
set wildmode=list:longest
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/dev/absolute_ca.vim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 autoload/absolute_ca.vim
badd +0 plugin/absolute_ca.vim
badd +0 readme.markdown
args autoload/absolute_ca.vim
edit autoload/absolute_ca.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
xnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
xnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
xnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
xnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
xnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
xnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
inoremap <buffer> <nowait> <silent>  =lexima#insmode#escape()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=marker
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,-,:,192-255,#
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 20 - ((11 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 0
tabedit readme.markdown
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> ss :silent ! start firefox expand("%:r") . ".html"
xnoremap <buffer> tt :call ToggleCheckbox()
nnoremap <buffer> tt :call ToggleCheckbox()
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=>\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=MkdCheckboxFold(v:lnum)
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=marker
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=MkdCheckboxFoldText()
setlocal formatexpr=
setlocal formatoptions=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^[-*+]\\s\\+
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,.
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:],<:>
setlocal nomodeline
setlocal modifiable
setlocal nrformats=
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'markdown'
setlocal syntax=markdown
endif
setlocal tabstop=2
setlocal tags=
setlocal textwidth=100
setlocal thesaurus=
setlocal noundofile
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
