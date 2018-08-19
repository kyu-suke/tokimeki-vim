command! Tokimeki call Kanamin()
function! Kanamin()
	let s:winid = win_getid()
	silent! execute 'new' 'tokimeki'
	setlocal nonumber
	setlocal buftype=nowrite
	call s:highlightKanamin()
	:0,$ delete
	call append('.', s:kanamin[0])
	call win_gotoid(s:winid)
endfunction

function! s:highlightKanamin()

	syntax clear
	syntax match tokimeki_comvo_char1 /00/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char1 ctermfg=darkcyan guifg='#fecc97'
	highlight tokimeki_comvo_char1 ctermbg=darkcyan guibg='#fecc97'
	syntax match tokimeki_comvo_char2 /11/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char2 ctermfg=grey guifg='#fecc97'
	highlight tokimeki_comvo_char2 ctermbg=grey guibg='#fecc97'
	syntax match tokimeki_comvo_char3 /22/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char3 ctermfg=cyan guifg='#fecc97'
	highlight tokimeki_comvo_char3 ctermbg=cyan guibg='#fecc97'
	syntax match tokimeki_comvo_char4 /33/ containedin=tokimeki_comvo
	highlight tokimeki_comvo_char4 ctermfg=blue guifg='#fecc97'
	highlight tokimeki_comvo_char4 ctermbg=blue guibg='#fecc97'
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

let s:kanamin = [
\ [
\"00000000000000000000000000000000000000000000000000",
\"00000000001111111111000000000000000000000000000000",
\"00000000001122222211110000000000000000000000000000",
\"00111111111133223333111111111111110000000000000000",
\"00113322223333334444444444444444111111000000000000",
\"00113333333344445555555555555555444411110000000000",
\"00111133335555555555555555555555555544111100000000",
\"00001111335555556655555555555555445555441100000000",
\"00000011555555557755555555444444555555441111000000",
\"00000011555555777777555555555555555555554411000000",
\"00000011555555774444775555555555555555555511000000",
\"00000011555555777777776666666666666655555511000000",
\"00000011555566775555777777777755557766555511000000",
\"00000011555577775588777777777755887777555511000000",
\"00000011555577774455777777777744557777555511000000",
\"00000011555577999977777777777777999977555511000000",
\"00000011555566999977447777774477999977555511000000",
\"00000011555555667777774444447777777755555511000000",
\"00000011555555556677777777777777775555555511000000",
\"00000011115555555566666666666666555555555511000000",
\"00000000115555553322666666666622335555555511000000",
\"00000000115555553322222233222222333355555511000000",
\"00000000111133338833332233225555883333551111000000",
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
