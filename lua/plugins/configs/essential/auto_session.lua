vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

return {
    name = "auto-session",
    repo_path = "rmagatti/auto-session",
    enabled = true,
    config = {
        log_level = "error",
    }
}
