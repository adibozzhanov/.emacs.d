;; use-package with package.el:
(use-package dashboard
  :ensure t
  :custom
  (dashboard-set-heading-icons t)
  (dashboard-icon-type 'all-the-icons)
  (dashboard-set-file-icons t)
  (dashboard-startup-banner 2)
  (dashboard-center-content t)
  (dashboard-show-shortcuts t)
  (dashboard-set-navigator t)
  (dashboard-init-info "The greatest code is written after 11pm on a saturday night.")
  (dashboard-set-footer nil)
  (dashboard-items '((recents  . 5)
		     (bookmarks . 5)
                     (projects . 5)))
  (dashboard-startupify-list '(dashboard-insert-navigator
                               dashboard-insert-newline
                               dashboard-insert-init-info
                               dashboard-insert-items
                               dashboard-insert-newline
                               dashboard-insert-footer))
  :config
  (dashboard-setup-startup-hook)
  (dashboard-modify-heading-icons '((recents . "clock")
				  (bookmarks . "bookmark")
                                  (projects . "repo"))))
