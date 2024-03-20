(use-package copilot
  :quelpa (copilot :fetcher github
                   :repo "copilot-emacs/copilot.el"
                   :branch "main"
                   :files ("dist" "*.el")))



(add-hook 'prog-mode-hook 'copilot-mode)
(add-to-list 'copilot-major-mode-alist '("TypeScript TSX" . "typescript"))
(define-key copilot-completion-map (kbd "C-j") 'copilot-accept-completion)
(define-key copilot-completion-map (kbd "C-M-j") 'copilot-clear-overlay)
(define-key copilot-completion-map (kbd "C-c j n") 'copilot-next-completion)
(define-key copilot-completion-map (kbd "C-c j p") 'copilot-previous-completion)
