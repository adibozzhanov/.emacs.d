(use-package format-all
  :ensure t
  :hook (prog-mode . format-all-mode)
  :config
  (setq-default format-all-formatters
		'(("TSX" (prettier))
		  ("TypeScript" (prettier)))))
