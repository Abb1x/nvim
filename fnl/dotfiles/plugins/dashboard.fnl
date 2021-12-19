(module dotfiles.plugins.dashboard
  {require {nvim aniseed.nvim}})


(local g nvim.g)

(set g.dashboard_disable_at_vimenter 0)
(set g.dashboard_disable_statusline 1)
(set g.dashboard_default_executive "telescope")

(set g.dashboard_custom_header [
                                ".---------------------------------." 
                                "|  .---------------------------.  |"
                                "|[]|                           |[]|" 
                                "|  |                           |  |"         
                                "|  |                           |  |"           
                                "|  |    NEOVIM                 |  |"           
                                "|  |                           |  |"          
                                "|  |                           |  |"          
                                "|  |                           |  |"          
                                "|  `---------------------------'  |"          
                                "|      __________________ _____   |"          
                                "|     |   ___            |     |  |"          
                                "|     |  |   |           |     |  |"          
                                "|     |  |   |           |     |  |"          
                                "|     |  |   |           |     |  |"          
                                "|     |  |___|           |     |  |"          
                                "\\_____|__________________|_____|__|"
                                ])

