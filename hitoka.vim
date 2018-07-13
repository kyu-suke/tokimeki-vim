command! Tokimeki call Hitoka()
function! Hitoka()
	let s:winid = win_getid()
	silent! execute 'new' 'tokimeki'
	setlocal nonumber
	setlocal buftype=nowrite
	call s:highlightHitoka()
	:0,$ delete
	call append('.', s:hitoka[0])
	call win_gotoid(s:winid)
endfunction

"function! s:highlightHitoka()
function! HighlightHitoka()

	syntax clear
	syntax match tokimeki_comvo_char1 /00/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char1 ctermfg=darkcyan guifg='#fecc97'
	highlight tokimeki_comvo_char1 ctermbg=darkcyan guibg='#fecc97'
	syntax match tokimeki_comvo_char2 /11/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char2 ctermfg=grey guifg='#fecc97'
	highlight tokimeki_comvo_char2 ctermbg=grey guibg='#fecc97'
	syntax match tokimeki_comvo_char3 /22/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char3 ctermfg=yellow guifg='#fecc97'
	highlight tokimeki_comvo_char3 ctermbg=yellow guibg='#fecc97'
	syntax match tokimeki_comvo_char4 /33/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char4 ctermfg=lightyellow guifg='#fecc97'
	highlight tokimeki_comvo_char4 ctermbg=lightyellow guibg='#fecc97'
	syntax match tokimeki_comvo_char5 /44/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char5 ctermfg=magenta guifg='#fecc97'
	highlight tokimeki_comvo_char5 ctermbg=magenta guibg='#fecc97'
	syntax match tokimeki_comvo_char6 /55/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char6 ctermfg=black guifg='#fecc97'
	highlight tokimeki_comvo_char6 ctermbg=black guibg='#fecc97'
	syntax match tokimeki_comvo_char7 /66/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char7 ctermfg=lightmagenta guifg='#fecc97'
	highlight tokimeki_comvo_char7 ctermbg=lightmagenta guibg='#fecc97'
	syntax match tokimeki_comvo_char8 /77/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char8 ctermfg=lightred guifg='#fecc97'
	highlight tokimeki_comvo_char8 ctermbg=lightred guibg='#fecc97'
	syntax match tokimeki_comvo_char9 /88/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char9 ctermfg=white guifg='#fecc97'
	highlight tokimeki_comvo_char9 ctermbg=white guibg='#fecc97'
	syntax match tokimeki_comvo_char10 /99/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char10 ctermfg=red guifg='#fecc97'
	highlight tokimeki_comvo_char10 ctermbg=red guibg='#fecc97'

endfunction

let s:hitoka = [
\ [
\"000000001111111111000011111111110000000000",
\"000000001122333311111111333333110000000000",
\"000000001122222222333322222222110000000000",
\"000000111122444444444444444422111100000000",
\"000000                                    ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\"                                          ",
\],
\]      
