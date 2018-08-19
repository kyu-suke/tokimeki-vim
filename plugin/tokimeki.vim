scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

execute 'source' fnameescape(expand('<sfile>:p:h') . "/member/hitoka.vim")
execute 'source' fnameescape(expand('<sfile>:p:h') . "/member/hiyori.vim")
execute 'source' fnameescape(expand('<sfile>:p:h') . "/member/kanami.vim")
execute 'source' fnameescape(expand('<sfile>:p:h') . "/member/mako.vim")
execute 'source' fnameescape(expand('<sfile>:p:h') . "/member/oharu.vim")

let &cpo = s:save_cpo
unlet s:save_cpo

