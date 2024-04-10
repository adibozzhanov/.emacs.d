(use-package popper
  :ensure t
  :bind (("C-'"   . popper-toggle)
         ("M-'"   . popper-cycle)
         ("C-M-'" . popper-toggle-type))
  :init
  (setq popper-display-control 'user)
  (setq popper-reference-buffers
        '("\\*Messages\\*"
          "Output\\*$"
          "\\*Async Shell Command\\*"
	  "\\*undo-tree\\*"
	  "\\magit: .*"
	  "\\*Kill Ring\\*"
	  "\\*lsp-ui-imenu\\*"
          help-mode
          compilation-mode))
  (popper-mode +1)
  (popper-echo-mode +1))
