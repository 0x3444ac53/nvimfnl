(local core (require :nfnl.core))
(local langs
  (core.map 
    (fn [x] (.. "*." x))
    [:cljs :py :scm :fnl :js :ts :sh :lua :clj]))

(vim.cmd "colorscheme base16-gruvbox-dark-pale")

(vim.api.nvim_exec
  "autocmd TermOpen * tnoremap <buffer> <Esc> <C-\\><C-n>" false)


(vim.api.nvim_create_autocmd 
 [:BufEnter :BufWinEnter]
 {:pattern langs 
  :callback (fn [] (set vim.opt_local.number true))})
(vim.api.nvim_create_autocmd
  [:InsertEnter]
  {:pattern langs 
   :callback (fn []
               (when vim.opt_local.number
                (set vim.opt_local.relativenumber true)))})
(vim.api.nvim_create_autocmd 
 [:InsertLeave]
 {:pattern langs 
  :callback (fn [] 
              (when vim.opt_local.number
                (set vim.opt_local.relativenumber false)))})
