(use-package org-present)

;; visual fill column
(use-package visual-fill-column)

(setq visual-fill-column-width 110
      visual-fill-column-center-text t)

(defun my/org-present-start ()
  ;; Center the presentation and wrap lines
  (visual-fill-column-mode 1)
  (visual-line-mode 1)
  (display-line-numbers-mode 0)
  (text-scale-increase 3))


(defun my/org-present-end ()
  ;; Stop centering the document
  (visual-fill-column-mode 0)
  (visual-line-mode 0)
  (display-line-numbers-mode 1))

(add-hook 'org-present-mode-hook 'my/org-present-start)
(add-hook 'org-present-mode-quit-hook 'my/org-present-end)
