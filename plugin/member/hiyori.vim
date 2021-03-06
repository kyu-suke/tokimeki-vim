command! Hiyori call Hiyori()
function! Hiyori()
	let s:winid = win_getid()
	silent! execute 'new' 'hiyori'
	setlocal nonumber
	setlocal buftype=nowrite
	call s:highlightHiyori()
	:0,$ delete
	call append('.', s:hiyori[0])
	call win_gotoid(s:winid)
endfunction

function! s:highlightHiyori()

	syntax clear
	syntax match hiyori_comvo_char1 /b/ containedin=hiyori_comvo
	highlight hiyori_comvo_char1 ctermfg=magenta guifg='#fecc97'
	highlight hiyori_comvo_char1 ctermbg=magenta guibg='#fecc97'
	syntax match hiyori_comvo_char2 /@/ containedin=hiyori_comvo
	highlight hiyori_comvo_char2 ctermfg=lightgray guifg='#fecc97'
	highlight hiyori_comvo_char2 ctermbg=lightgray guibg='#fecc97'
	syntax match hiyori_comvo_char3 /m/ containedin=hiyori_comvo
	highlight hiyori_comvo_char3 ctermfg=black guifg='#fecc97'
	highlight hiyori_comvo_char3 ctermbg=black guibg='#fecc97'
	syntax match hiyori_comvo_char4 /l/ containedin=hiyori_comvo
	highlight hiyori_comvo_char4 ctermfg=darkmagenta guifg='#fecc97'
	highlight hiyori_comvo_char4 ctermbg=darkmagenta guibg='#fecc97'
	syntax match hiyori_comvo_char5 /r/ containedin=hiyori_comvo
	highlight hiyori_comvo_char5 ctermfg=9 guifg='#fecc97'
	highlight hiyori_comvo_char5 ctermbg=9 guibg='#fecc97'
	syntax match hiyori_comvo_char6 /v/ containedin=hiyori_comvo
	highlight hiyori_comvo_char6 ctermfg=lightred guifg='#fecc97'
	highlight hiyori_comvo_char6 ctermbg=lightred guibg='#fecc97'
	syntax match hiyori_comvo_char7 /w/ containedin=hiyori_comvo
	highlight hiyori_comvo_char7 ctermfg=white guifg='#fecc97'
	highlight hiyori_comvo_char7 ctermbg=white guibg='#fecc97'
	syntax match hiyori_comvo_char8 /g/ containedin=hiyori_comvo
	highlight hiyori_comvo_char8 ctermfg=lightgreen guifg='#fecc97'
	highlight hiyori_comvo_char8 ctermbg=lightgreen guibg='#fecc97'
	syntax match hiyori_comvo_char9 /t/ containedin=hiyori_comvo
	highlight hiyori_comvo_char9 ctermfg=darkgreen guifg='#fecc97'
	highlight hiyori_comvo_char9 ctermbg=darkgreen guibg='#fecc97'
	syntax match hiyori_comvo_char10 /p/ containedin=hiyori_comvo
	highlight hiyori_comvo_char10 ctermfg=212 guifg='#fecc97'
	highlight hiyori_comvo_char10 ctermbg=212 guibg='#fecc97'

endfunction

let s:hiyori = [
\		[
\"",
\"bbb@@@@@@@@bb@@@@@@@@@@@@@@@@@@@@@@@@@@bbbbbb",
\"bbb@@gggg@@@@@@llllllllllllll@@@@llgg@@bbbbbb",
\"bbb@@ggggggllllmmmmmmmmmmmmmmllllgggg@@bbbbbb",
\"gggggttttggmmmmmmmmmmmmmmmmmmmmtttttt@@@@@@@@",
\"@ttttggmmmmmmllmmmmmmmmmmmmmmllmmllmmttgggg@@",
\"@@@ttttmmmmmmmmmmllmmllllllllmmmmmmllttgg@@@@",
\"b@@mmttmmmmmmmmmmmmmmmmmmmmmmmmmmmmlltt@@@@bb",
\"b@@mmmmmmppmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm@@bb",
\"b@@mmmmmmppppvvmmmmvvvvvvvvmmmmvvppmmmmmm@@bb",
\"b@@mmppllppvvvvmmwwvvvvvvvvmmwwvvvvppvvmm@@bb",
\"b@@mmppllppvvvvllmmvvvvvvvvllmmvvvvvvppmm@@bb",
\"b@@mmppppppvvvvvvvvvvvvvvvvvvvvvvvvvvppmm@@bb",
\"b@@mmmmppppvvrrrrvvvvvvvvvvvvrrrrvvvvmmmm@@bb",
\"b@@mmmmmm@@pprrrrvvllvvvvllvvrrrrvvmmmmmm@@bb",
\"b@@mmmmmm@@@@ppvvvvvvllllvvvvvvvv@@mmmmmm@@bb",
\"b@@mmmmmm@@@@@@ppvvvvvvvvvvvvvv@@@@mmmmmm@@bb",
\"b@@mmmmmm@@@@@@ttggppppppppppggtt@@mmmmmm@@bb",
\"b@@mmmmmm@@@@ttttggggggttggggggttttmmmmmm@@bb",
\"b@@mmmmmm@@ttttwwttttggttggmmmmwwttttmmmm@@bb",
\"b@@mmmmmmttttttttttwwttggttmmmmttttttttmm@@bb",
\"b@@mmmmggggggggwwttggggwwggggttwwgggggggg@@bb",
\"b@@mmmmmmvvvvttttttwwggggggwwttttttvvvvmm@@bb",
\"b@@@@mmvvvvvv@@ttttttttwwtttttttt@@vvvvmm@@bb",
\"bbb@@@@@@vv@@@@ttggttggttggttggtt@@@@vv@@@@bb",
\"bbbbbbb@@@@@@ttggttggttggttggttggtt@@@@@@bbbb",
\"bbbbbbbbbbb@@ggttggttggttggttggttgg@@bbbbbbbb",
\"bbbbbbbbbbb@@ttggttggttggttggttggtt@@bbbbbbbb",
\"bbbbbbbbbbb@@@@@@@@pppp@@pppp@@@@@@@@bbbbbbbb",
\"bbbbbbbbbbbbbbbbb@@vvvv@@vvvv@@bbbbbbbbbbbbbb",
\"bbbbbbbbbbbbbbbbb@@gggg@@gggg@@bbbbbbbbbbbbbb",
\"bbbbbbbbbbbbbbbbb@@@@@@@@@@@@@@bbbbbbbbbbbbbb",
\		],
\	]

