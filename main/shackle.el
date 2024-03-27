(use-package shackle
  :config
  (setq shackle-rules '(("magit: .*" :regexp t :select t :align right :size 0.3  :popup t)
			("\\*undo-tree\\*" :regexp t :select t :align left :size 0.15  :popup t)
			("\\*Kill Ring\\*" :regexp t :select t :align left :size 0.15  :popup t)))
  (shackle-mode 1))
