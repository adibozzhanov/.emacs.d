;; Move customisation stuff to a different file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Define the beginning of the path
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

;; Create a function for loading a file in my .emacs dir for convenience
(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

;; Load all global config files
(load-user-file "main/main.el")
;; Load all language specific files
(load-user-file "code/code.el")

