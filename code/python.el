(use-package hide-mode-line
  :ensure t
  :defer t
  :hook (inferior-python-mode . hide-mode-line-mode))

(use-package lsp-pyright
  :ensure t
  :defer t
  :hook ((python-mode . (lambda ()
			  (require 'lsp-pyright)
			  (lsp-deferred)))))
