command! -nargs=1 -complete=file GoRun lua require("go.cmd").run(<f-args>)
command! -nargs=0 GoAlternate lua require("go.cmd").alternate()
command! -nargs=* GoBuild lua require("go.cmd").build(<f-args>)
command! -nargs=* GoTest lua require("go.cmd").test()