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

function! s:highlightHitoka()

	syntax clear
	syntax match tokimeki_comvo_char1 /00/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char1 ctermfg=darkcyan guifg='#fecc97'
	highlight tokimeki_comvo_char1 ctermbg=darkcyan guibg='#fecc97'
	syntax match tokimeki_comvo_char2 /11/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char2 ctermfg=grey guifg='#fecc97'
	highlight tokimeki_comvo_char2 ctermbg=grey guibg='#fecc97'
	syntax match tokimeki_comvo_char3 /22/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char3 ctermfg=darkred guifg='#fecc97'
	highlight tokimeki_comvo_char3 ctermbg=darkred guibg='#fecc97'
	syntax match tokimeki_comvo_char4 /33/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char4 ctermfg=red guifg='#fecc97'
	highlight tokimeki_comvo_char4 ctermbg=red guibg='#fecc97'
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
\"000000114444555555555555555544441111000000",
\"000000115555555555555555555555554411000000",
\"000011115544555555555555555544554411110000",
\"000011555555554455444444444455555544110000",
\"000011555555555555555555555555555544110000",
\"000011554455555555555555555555555555110000",
\"001111556677555577777777775555776655111100",
\"001166446677558877777777775588777755771100",
\"001166446677555577777777775555777755661100",
\"001166666677445577777777774455777777661100",
\"001111666699997777777777777799997777111100",
\"000011556699997744777777447799997711110000",
\"000011555566777777444444777777771111000000",
\"000011555555667777777777777777111100000000",
\"000011555555556666666666666611110000000000",
\"000011555555223366666666663322111100000000",
\"000011111122223333332233333322221111000000",
\"000000112222882222332233555588222211000000",
\"000011112222222288223322555522222211110000",
\"001111222233882233338833332288332222111100",
\"001133333322222288333333882222223333331100",
\"001111777722222222228822222222227777111100",
\"000011777777223322332233223322777777110000",
\"000011117722332233223322332233227711110000",
\"000000111133223322332233223322331111000000",
\"000000001122332233223322332233221100000000",
\"000000001111111166661166661111111100000000",
\"000000000000001177771177771100000000000000",
\"000000000000001133331133331100000000000000",
\"000000000000001111111111111100000000000000",
\],
\]
