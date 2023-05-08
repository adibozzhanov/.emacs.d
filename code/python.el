(add-hook 'python-mode-hook 'format-all-mode)
(use-package elpy
    :ensure t
    :init
    (elpy-enable))
