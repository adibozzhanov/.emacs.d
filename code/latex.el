(use-package tex
  :pin gnu
  :ensure auctex
  :mode ("\\.tex\\$" . latex-mode)
  :custom
  (TeX-auto-save t)
  (TeX-parse-self t)
  (TeX-master nil))

(use-package company-auctex
  :pin melpa
  :after tex
  :init
  (company-auctex-init))
