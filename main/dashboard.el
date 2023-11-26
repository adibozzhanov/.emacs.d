;; use-package with package.el:
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq dashboard-banner-logo-title "ADI'S EMACS")
(setq dashboard-startup-banner 2)
(setq dashboard-show-shortcuts t)
(setq dashboard-set-navigator t)
(setq dashboard-init-info "You are safe here. Nobody can hurt you here. Just keep coding and you will be fine.")
(setq dashboard-set-footer nil)


(setq dashboard-items '((recents  . 10)
                        (projects . 5)))


(setq dashboard-icon-type 'all-the-icons)
(dashboard-modify-heading-icons '((recents . "file-text")
                                  (projects . "book")))
