(local uu (require :dotfiles.util))

(uu.tx
  :nvim-treesitter/nvim-treesitter
  {:branch "master"
   :lazy false
   :build ":TSUpdate"
   :opts (fn [_ opts]
          (set opts.ensure_installed
              ((. (require :astrocore) :list_insert_unique) opts.ensure_installed
               [:clojure :fennel :kdl :markdown :diff :djot])))})
;  :config (fn [_ opts]
;            (let [configs (require :nvim-treesitter.configs)
;                  _ (configs:setup opts)
;                  parser_configs (configs:get_parser_configs)
;              parser_configs)
;
;(require :nvim-treesitter.configs)
