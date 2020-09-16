" use system clipboard
set clipboard=unnamedplus

set foldmethod=syntax

" file navigation
nnoremap <silent> gr :<C-u>call VSCodeNotify('editor.action.goToReferences')<CR>
nnoremap <silent> gv :<C-u>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
nnoremap <silent> <leader>o :<C-u>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <silent> <leader>f :<C-u>call VSCodeNotify('workbench.action.findInFiles')<CR>
nnoremap <silent> [g :<C-u>call VSCodeNotify('editor.action.marker.prev')<CR>
nnoremap <silent> ]g :<C-u>call VSCodeNotify('editor.action.marker.next')<CR>

" git related keybindings
nnoremap <silent> [c :<C-u>call VSCodeNotify('workbench.action.editor.nextChange')<CR>
nnoremap <silent> ]c :<C-u>call VSCodeNotify('workbench.action.editor.previousChange')<CR>
nnoremap <silent> <leader>hu :<C-u>call VSCodeNotify('git.revertChange')<CR>
nnoremap <silent> <leader>ha :<C-u>call VSCodeNotify('git.stageChange')<CR>
nnoremap <silent> <leader>hp :<C-u>call VSCodeNotify('editor.action.dirtydiff.next')<CR>
nnoremap <silent> <leader>hc :<C-u>call VSCodeNotify('closeDirtyDiff')<CR>

" moving throught editors
nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
nnoremap <silent> <C-w>= :<C-u>call VSCodeNotify('workbench.action.evenEditorWidths')<CR>
xnoremap <silent> <C-w>= :<C-u>call VSCodeNotify('workbench.action.evenEditorWidths')<CR>

xnoremap <silent> <C-/> :call Comment()<CR>
nnoremap <silent> <C-/> :call Comment()<CR>

" IDE actions/fixes
nnoremap <silent> <leader>qf :<C-u>call VSCodeNotify('editor.action.autoFix')<CR>
nnoremap <silent> <leader>ac :<C-u>call VSCodeNotify('problems.action.showQuickFixes')<CR>
nnoremap <silent> <leader>ao :<C-u>call VSCodeNotify('editor.action.organizeImports')<CR>

"toggle sidebar
nnoremap <silent> <C-n> :<C-u>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>

function! s:extractToVar()
    normal! gv
    let startPos = getpos("v")
    let endPos = getpos(".")
    call VSCodeNotifyRangePos("go.godoctor.var", startPos[1], endPos[1], startPos[2], endPos[2], 1)
endfunction

xnoremap <silent> <leader>ex :<C-u>call <SID>extractToVar()<CR>


" folds
nnoremap <silent> zM :<C-u>call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zR :<C-u>call VSCodeNotify('editor.unfoldAll')<CR>
nnoremap <silent> zO :<C-u>call VSCodeNotify('editor.unfoldRecursively')<CR>
nnoremap <silent> zC :<C-u>call VSCodeNotify('editor.foldRecursively')<CR>
nnoremap <silent> zo :<C-u>call VSCodeNotify('editor.unfold')<CR>
nnoremap <silent> zc :<C-u>call VSCodeNotify('editor.fold')<CR>
nnoremap <silent> za :<C-u>call VSCodeNotify('editor.toggleFold')<CR>

nnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
xnoremap <silent> <Space> :call VSCodeNotify('whichkey.show')<CR>
