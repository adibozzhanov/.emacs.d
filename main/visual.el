

;; Remove useless UI shit
(tool-bar-mode -1) ; Bye tool bar
(scroll-bar-mode -1) ; Bye scroll bar
(menu-bar-mode -1) ; Bye menu bar


(defun my/disable-scroll-bars (frame)
  (modify-frame-parameters frame
                           '((vertical-scroll-bars . nil)
                             (horizontal-scroll-bars . nil))))
(add-hook 'after-make-frame-functions 'my/disable-scroll-bars)

;; Lines
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(setq default-frame-alist '((undecorated . t)))
(add-to-list 'default-frame-alist '(drag-internal-border . 1))
(add-to-list 'default-frame-alist '(internal-border-width . 5))


(use-package monokai-pro-theme
  :ensure t
  :config
  (load-theme 'monokai-pro-machine t))

(show-paren-mode)
(set-default 'truncate-lines t)

;; emoji support
(set-fontset-font t 'symbol
                  (font-spec :family "Apple Color Emoji")
                  nil 'prepend)
