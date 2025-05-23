return {
    name = "copilot",
    repo_path = "zbirenbaum/copilot.lua",
    enabled = true,
    lazy = true,
    event = "InsertEnter",
    config = {
        suggestion = {
            enabled = false,
            auto_trigger = true,
            hide_during_completion = true,
            debounce = 75,
            keymap = {
                accept = "¬",
                accept_word = false,
                accept_line = false,
                next = "<M-]>",
                prev = "<M-[>",
                dismiss = "<C-]>",
            },
        },
    }
}
