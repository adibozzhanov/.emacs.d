;; This is always useful
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Just a general hook for when code formatters are on
(use-package format-all)
(add-hook 'format-all-mode-hook 'format-all-ensure-formatter)

;; Load config files per each language
(load-user-file "code/python.el")
(load-user-file "code/markdown.el")
(load-user-file "code/docker.el")
(load-user-file "code/yaml.el")
(load-user-file "code/typescript.el")
(load-user-file "code/terraform.el")
(load-user-file "code/json.el")
(load-user-file "code/etags-update.el")
(load-user-file "code/org-mode.el")

(etags-update-mode)
