(use-package company
  :ensure t
  :defer t
  :custom
  (company-dabbrev-other-buffers t)
  (company-dabbrev-code-other-buffers t)
  (company-show-numbers t)
  (company-minimum-prefix-length 3)
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case t)
  (company-idle-delay 0.2)
  (company-global-modes '(not eshell-mode shell-mode))
    :hook ((text-mode . company-mode)
           (prog-mode . company-mode)))

(use-package hide-mode-line
  :ensure t
  :defer t
  :hook (inferior-python-mode . hide-mode-line-mode))

(use-package lsp-mode
  :ensure t
  :defer t
  :defines (lsp-keymap-prefix lsp-mode-map)
  :init
  (setq lsp-keymap-prefix "C-c l")
  :custom
  (lsp-eldoc-enable-hover nil)
  (lsp-signature-auto-activate nil)
  (lsp-completion-enable t)
  :hook ((lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

(use-package lsp-pyright
  :ensure t
  :defer t
  :hook ((python-mode . (lambda ()
			  (require 'lsp-pyright)
			  (lsp-deferred)))))
(use-package lsp-ui
  :ensure t)
