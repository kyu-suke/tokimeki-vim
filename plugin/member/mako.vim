command! Mako call Mako()
function! Mako()
	let s:winid = win_getid()
	silent! execute 'new' 'mako'
	setlocal nonumber
	setlocal buftype=nowrite
	call s:highlightMako()
	:0,$ delete
	call append('.', s:mako[0])
	call win_gotoid(s:winid)
endfunction

function! s:highlightMako()

	syntax clear
	syntax match mako_comvo_char1 /00/ containedin=mako_comvo
	highlight mako_comvo_char1 ctermfg=darkcyan guifg='#fecc97'
	highlight mako_comvo_char1 ctermbg=darkcyan guibg='#fecc97'
	syntax match mako_comvo_char2 /11/ containedin=mako_comvo
	highlight mako_comvo_char2 ctermfg=grey guifg='#fecc97'
	highlight mako_comvo_char2 ctermbg=grey guibg='#fecc97'
	syntax match mako_comvo_char3 /22/ containedin=mako_comvo
	highlight mako_comvo_char3 ctermfg=yellow guifg='#fecc97'
	highlight mako_comvo_char3 ctermbg=yellow guibg='#fecc97'
	syntax match mako_comvo_char4 /33/ containedin=mako_comvo
	highlight mako_comvo_char4 ctermfg=lightyellow guifg='#fecc97'
	highlight mako_comvo_char4 ctermbg=lightyellow guibg='#fecc97'
	syntax match mako_comvo_char5 /44/ containedin=mako_comvo
	highlight mako_comvo_char5 ctermfg=magenta guifg='#fecc97'
	highlight mako_comvo_char5 ctermbg=magenta guibg='#fecc97'
	syntax match mako_comvo_char6 /55/ containedin=mako_comvo
	highlight mako_comvo_char6 ctermfg=black guifg='#fecc97'
	highlight mako_comvo_char6 ctermbg=black guibg='#fecc97'
	syntax match mako_comvo_char7 /66/ containedin=mako_comvo
	highlight mako_comvo_char7 ctermfg=lightmagenta guifg='#fecc97'
	highlight mako_comvo_char7 ctermbg=lightmagenta guibg='#fecc97'
	syntax match mako_comvo_char8 /77/ containedin=mako_comvo
	highlight mako_comvo_char8 ctermfg=lightred guifg='#fecc97'
	highlight mako_comvo_char8 ctermbg=lightred guibg='#fecc97'
	syntax match mako_comvo_char9 /88/ containedin=mako_comvo
	highlight mako_comvo_char9 ctermfg=white guifg='#fecc97'
	highlight mako_comvo_char9 ctermbg=white guibg='#fecc97'
	syntax match mako_comvo_char10 /99/ containedin=mako_comvo
	highlight mako_comvo_char10 ctermfg=red guifg='#fecc97'
	highlight mako_comvo_char10 ctermbg=red guibg='#fecc97'

endfunction

let s:mako = [
\ [
\"000000001111111111000011111111110000000000",
\"000000001122333311111111333333110000000000",
\"000000001122222222333322222222110000000000",
\"000000111122444444444444444422111100000000",
\"000000114444555555555555555544441111000000",
\"000011115555555555555555555555554411110000",
\"000011555555445555555555555544555544110000",
\"001111555566776655555544444455555544110000",
\"001155555577777755555555555555555544111100",
\"001155555577444466555555555555555555441100",
\"001155555577777777666666666666665555441100",
\"001155555577555577777777775555775555551100",
\"001155555577558877777777775588775555551100",
\"001155555577445577777777774455775555551100",
\"001155555599997777777777777799995555551100",
\"001155555599997744777777447799995555551100",
\"001155555566777777444444777777775555551100",
\"001155555555667777777777777777555555111100",
\"001111555555556666666666666655555511110000",
\"000011115555223366666666663322551111000000",
\"000000111122223333332233333322221111000000",
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
