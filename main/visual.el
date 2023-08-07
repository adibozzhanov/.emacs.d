(setq inhibit-startup-message t) ; Bye splash screen

;; Remove useless UI shit
(tool-bar-mode -1) ; Bye tool bar
(scroll-bar-mode -1) ; Bye scroll bar
(menu-bar-mode -1) ; Bye menu bar

;; Lines
(global-display-line-numbers-mode 1) ; Show line numbers
(setq display-line-numbers-type 'relative)

;; General visual flair
(set-frame-parameter (selected-frame) 'alpha '(90 90)) ; Transparency
(use-package dracula-theme)
(load-theme 'dracula t) ; Dracula theme is a must
(show-paren-mode)
(set-default 'truncate-lines t)
