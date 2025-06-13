(local uu (require :dotfiles.util))

(set vim.g.everforest_background :hard)
(set _G.background :dark)

(uu.tx
  :AstroNvim/astroui
  {:opts {:colorscheme "base16-gruvbox-dark-pale"
          :highlights {:astrotheme {}
                       :init {}}
          :icons {:LSPLoading1 "⠋"
                  :LSPLoading10 "⠏"
                  :LSPLoading2 "⠙"
                  :LSPLoading3 "⠹"
                  :LSPLoading4 "⠸"
                  :LSPLoading5 "⠼"
                  :LSPLoading6 "⠴"
                  :LSPLoading7 "⠦"
                  :LSPLoading8 "⠧"
                  :LSPLoading9 "⠇"}}})
