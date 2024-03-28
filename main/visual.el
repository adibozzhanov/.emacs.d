(setq inhibit-startup-message t) ; Bye splash screen

;; Remove useless UI shit
(tool-bar-mode -1) ; Bye tool bar
(scroll-bar-mode -1) ; Bye scroll bar
(menu-bar-mode -1) ; Bye menu bar

;; Lines
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(setq default-frame-alist '((undecorated . t)))
(add-to-list 'default-frame-alist '(drag-internal-border . 1))
(add-to-list 'default-frame-alist '(internal-border-width . 5))
;; General visual flair
(set-frame-parameter (selected-frame) 'alpha '(95 95)) ; Transparency
(use-package dracula-theme)
(load-theme 'dracula t) ; Dracula theme is a must
(show-paren-mode)
(set-default 'truncate-lines t)
