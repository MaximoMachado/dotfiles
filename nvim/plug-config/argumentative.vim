nmap [; <Plug>Argumentative_Prev
nmap ]; <Plug>Argumentative_Next
xmap [; <Plug>Argumentative_XPrev
xmap ]; <Plug>Argumentative_XNext
nmap <; <Plug>Argumentative_MoveLeft
nmap >; <Plug>Argumentative_MoveRight

" Rebind keys from i to h since I use h for insert/inside mode
xmap h; <Plug>Argumentative_InnerTextObject
xmap a; <Plug>Argumentative_OuterTextObject
" Rebind keys from i to h since I use h for insert/inside mode
omap h; <Plug>Argumentative_OpPendingInnerTextObject
omap a; <Plug>Argumentative_OpPendingOuterTextObject
