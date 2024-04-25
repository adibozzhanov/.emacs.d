(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

(use-package typescript-mode
  :ensure t
  :config
  (setq typescript-indent-level 2)
  (add-hook 'typescript-mode #'subword-mode))


(use-package web-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  (add-hook 'web-mode-hook
            (lambda ()
              (when (string-equal "tsx" (file-name-extension buffer-file-name))
		(setup-tide-mode))))
  (flycheck-add-mode 'typescript-tslint 'web-mode))





(use-package tide
  :ensure t
  :init
  (setq tide-sync-request-timeout 2)
  (setq tide-hl-identifier-idle-time 0.1)
  (setq tide-completion-show-source t)
  :bind
  ("M-p" . tide-references)
  ("M-1" . tide-fix)
  :after (company flycheck)
  :hook
  (typescript-mode . tide-setup)
  (typescript-ts-mode . tide-setup)
  (tsx-ts-mode . tide-setup)
  (typescript-ts-mode . tide-hl-identifier-mode)
  (before-save . tide-format-before-save))
