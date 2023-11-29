return {
    name = "mason",
    repo_path = "williamboman/mason.nvim",
    priority = 950,
    enabled = true,
    lazy = true,
    event = "UIEnter",
    config = {},
    build = ":MasonUpdate"
}
