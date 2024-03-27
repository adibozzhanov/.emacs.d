(use-package dired
  :ensure nil
  :config
  (setq dired-auto-revert-buffer t)
  (add-hook 'dired-mode-hook 'dired-hide-details-mode))
