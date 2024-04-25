(use-package copilot
  :quelpa (copilot :fetcher github
                   :repo "copilot-emacs/copilot.el"
                   :branch "main"
                   :files ("dist" "*.el")))



(add-hook 'prog-mode-hook 'copilot-mode)
(define-key copilot-completion-map (kbd "C-j") 'copilot-accept-completion)
(define-key copilot-completion-map (kbd "C-q") 'copilot-clear-overlay)
(define-key copilot-completion-map (kbd "C-M-J") 'copilot-accept-completion-by-word)
