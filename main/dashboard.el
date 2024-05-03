;; use-package with package.el:
(use-package dashboard
  :ensure t
  :custom
  (dashboard-center-content t)
  (dashboard-vertically-center-content t)
  (dashboard-show-shortcuts t)
  (dashboard-items '((recents  . 5)
		     (bookmarks . 5)
                     (projects . 5)))
  (dashboard-startupify-list '(dashboard-insert-items))
  :config
  (dashboard-setup-startup-hook))
