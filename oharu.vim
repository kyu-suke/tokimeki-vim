command! Tokimeki call Oharu()
function! Oharu()
	let s:winid = win_getid()
	silent! execute 'new' 'tokimeki'
	setlocal nonumber
	setlocal buftype=nowrite
	call s:highlightOharu()
	:0,$ delete
	call append('.', s:oharu[0])
	call win_gotoid(s:winid)
endfunction

function! s:highlightOharu()

	syntax clear
	syntax match tokimeki_comvo_char1 /00/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char1 ctermfg=darkcyan guifg='#fecc97'
	highlight tokimeki_comvo_char1 ctermbg=darkcyan guibg='#fecc97'
	syntax match tokimeki_comvo_char2 /11/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char2 ctermfg=grey guifg='#fecc97'
	highlight tokimeki_comvo_char2 ctermbg=grey guibg='#fecc97'
	syntax match tokimeki_comvo_char3 /22/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char3 ctermfg=lightmagenta guifg='#fecc97'
	highlight tokimeki_comvo_char3 ctermbg=lightmagenta guibg='#fecc97'
	syntax match tokimeki_comvo_char4 /33/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char4 ctermfg=magenta guifg='#fecc97'
	highlight tokimeki_comvo_char4 ctermbg=magenta guibg='#fecc97'
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

let s:oharu = [
\ [
\"00000000000000000000000000000000000000000000000000",
\"00000011111111111111111111111111110011111100000000",
\"00000011222211114444444444444444111111221100000000",
\"00000011222222445555555555555555444422221100000000",
\"00111111333322555555555555555555553333331111111100",
\"00113333225555445555555555555555445544553322221100",
\"00111133335555665544554444444444555555443322111100",
\"00001111335555666655555555555555555555443311110000",
\"00000011555555774444555555555555555555555511000000",
\"00000011555555777777666666666666666655555511000000",
\"00000011665566775555777777777755557766557711000000",
\"00000011665566775588777777777755887777556611000000",
\"00000011664466774455777777777744557777446611000000",
\"00001111554466999977777777777777999977445511110000",
\"00001155551166999977447777774477999977115555110000",
\"00001155551111667777774444447777777711115555110000",
\"00001155551111116677777777777777771111115555110000",
\"00001111551111111166666666666666111111115511110000",
\"00000011115511113322666666666622331111551111000000",
\"00000000111111333322222233222222333311111100000000",
\"00000000001133338833332233225555883333110000000000",
\"00000000111133333333883322335555333333111100000000",
\"00000011113333228833222288222233882233331111000000",
\"00000011222222333333882222228833333322222211000000",
\"00000011117777333333333388333333333377771111000000",
\"00000000117777773322332233223322337777771100000000",
\"00000000111177332233223322332233223377111100000000",
\"00000000001111223322332233223322332211110000000000",
\"00000000000011332233223322332233223311000000000000",
\"00000000000011111111666611666611111111000000000000",
\"00000000000000000011777711777711000000000000000000",
\"00000000000000000011222211222211000000000000000000",
\"00000000000000000011111111111111000000000000000000",
\"00000000000000000000000000000000000000000000000000",
\],
\]
