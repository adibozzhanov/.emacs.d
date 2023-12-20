;; use-package with package.el:
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq dashboard-set-heading-icons t)
(setq dashboard-icon-type 'all-the-icons)
(setq dashboard-set-file-icons t)
(setq dashboard-banner-logo-title "ADI'S EMACS")
(setq dashboard-startup-banner 2)
(setq dashboard-center-content t)
(setq dashboard-show-shortcuts t)
(setq dashboard-set-navigator t)
(setq dashboard-init-info "Remember to push changes to your emacs config.")
(setq dashboard-set-footer nil)
(setq dashboard-items '((recents  . 5)
			(bookmarks . 5)
                        (projects . 5)))

(dashboard-modify-heading-icons '((recents . "clock")
				  (bookmarks . "bookmark")
                                  (projects . "repo")))
