return {
    name = "dashboard",
    repo_path = "glepnir/dashboard-nvim",
    enabled = true,
    lazy = true,
    event = "UIEnter",
    dependencies = { "kyazdani42/nvim-web-devicons" },
    config = {
        change_to_vcs_root = true,
        config = {
            shortcut = {
                {
                  icon = ' ',
                  icon_hl = '@variable',
                  desc = 'Files ',
                  group = 'Label',
                  action = 'Telescope find_files',
                  key = 'f',
                },
            },
            footer = {" "},
            header = {
             ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
             ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
             ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
             ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
             ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
             ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝'
            }
        }
    }
}


