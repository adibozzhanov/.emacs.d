(use-package terraform-mode
  ;; if using straight
  ;; :straight t

  ;; if using package.el
  ;; :ensure t
  :custom (terraform-indent-level 2)
  :config
  (defun my-terraform-mode-init () (outline-minor-mode 1))
  (add-hook 'terraform-mode-hook 'my-terraform-mode-init))
