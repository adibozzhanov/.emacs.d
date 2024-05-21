



(use-package dashboard
  :ensure t
  :custom
  (dashboard-center-content t)
  (dashboard-show-shortcuts t)
  (dashboard-items '((recents  . 5)
		     (bookmarks . 20)
                     (projects . 5)))
  (dashboard-startupify-list '(dashboard-insert-items))
  :config
  (dashboard-setup-startup-hook)
  (add-hook 'dashboard-mode-hook (lambda () (setq-local mode-line-format nil)))
  :bind
  ("C-c d" . dashboard-open)
  ("C-c C-d" . dashboard-open))

(dashboard-open)
