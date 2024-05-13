(use-package shackle
  :config
  (setq shackle-rules '(("magit: .*" :regexp t :select t :align right :size 0.25  :popup t)
			("\\*undo-tree\\*" :regexp t :select t :align left :size 0.1  :popup t)
			("\\*Kill Ring\\*" :regexp t :select t :align left :size 0.1  :popup t)
			("todo.md" :regexp t :select t :align right :size 0.2 :popup t)
			("\\*Telega Root\\*" :regexp t :select t :align left :size 0.2 :popup t)
			(telega-chat-mode :select t :align right :size 0.2 :popup t)))
  (shackle-mode 1))
