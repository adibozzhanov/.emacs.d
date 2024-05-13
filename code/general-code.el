(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode))

(use-package company
  :ensure t
  :defer t
  :config
  (setq company-tooltip-align-annotations t)
  (setq company-tooltip-flip-when-above t)
  :custom
  (company-dabbrev-other-buffers t)
  (company-dabbrev-code-other-buffers t)
  (company-show-numbers t)
  (company-minimum-prefix-length 2)
  (company-dabbrev-downcase nil)
  (company-dabbrev-ignore-case t)
  (company-idle-delay 0)
  (company-global-modes '(not eshell-mode shell-mode))
    :hook ((text-mode . company-mode)
           (prog-mode . company-mode)))

(use-package company-quickhelp
  :ensure t
  :init
  (company-quickhelp-mode 1)
  (use-package pos-tip
    :ensure t))

(use-package company-box
  :hook (company-mode . company-box-mode))

(setq standard-indent 2)
(use-package lsp-mode
  :ensure t
  :defer t
  :defines (lsp-keymap-prefix lsp-mode-map)
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq warning-minimum-level ':error)
  (setq lsp-log-io nil)
  (setq lsp-ui-sideline-show-hover t)
  (setq lsp-ui-sideline-show-diagnostics t)
  (setq lsp-enable-indentation nil)
  (add-hook 'kotlin-mode-hook (lambda () (lsp-mode 1)))
  :custom
  (lsp-eldoc-enable-hover nil)
  (lsp-signature-auto-activate nil)
  (lsp-completion-enable t)
  :hook (
	 (lsp-mode . lsp-enable-which-key-integration)
	 )
  :commands (lsp lsp-mode lsp-deferred))

(use-package lsp-ui
  :ensure t
  :bind (("C-c l i" . lsp-ui-imenu))
  :commands lsp-ui-mode)
