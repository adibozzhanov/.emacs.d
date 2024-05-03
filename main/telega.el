;; Run this to set it up
;;
;; git clone https://github.com/tdlib/td.git
;;
;; cd into td
;; mkdir build && cd build && cmake ../

(quelpa '(telega :fetcher github
                 :repo "zevlg/telega.el"
                 :branch "master"
                 :files (:defaults "contrib" "etc" "server" "Makefile")))

(define-key global-map (kbd "C-c t") telega-prefix-map)
(add-hook 'telega-chat-mode-hook 'company-mode)
(add-hook 'telega-load-hook 'telega-mode-line-mode)


(setq telega-company-backends '(telega-company-emoji
				telega-company-username))
