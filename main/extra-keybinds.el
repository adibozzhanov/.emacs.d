(require 'bind-key)
(bind-key "C-c f o" 'recentf-open-files)
(bind-key "C-c f ." (lambda() (interactive)(find-file "~/.emacs.d/")))
(bind-key "C-c f c" (lambda() (interactive)(find-file "~/Documents/")))
