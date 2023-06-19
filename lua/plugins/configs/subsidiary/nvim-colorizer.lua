return {
    name = "colorizer",
    repo_path = "norcalli/nvim-colorizer.lua",
    enabled = true,
    lazy = true,
    event = "VeryLazy",
    config = {
        "javascript";
        css = { rgb_fn = true };
        scss = { rgb_fn = true };
        html = { mode = "foreground" };
    }
}
