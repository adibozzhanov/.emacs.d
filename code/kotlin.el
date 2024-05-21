(use-package kotlin-mode
  :after (lsp-mode)
  :hook
  (kotlin-mode . lsp)
  (kotlin-mode . yas-minor-mode))

(use-package elogcat
  :commands elogcat)

(use-package gradle-mode
  :init
  (gradle-mode 1))
