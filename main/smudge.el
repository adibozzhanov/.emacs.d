(use-package smudge
  :ensure t
  :bind-keymap ("C-c ." . smudge-command-map)
  :custom
  (smudge-player-use-transient-map t)
  (smudge-oauth2-client-secret "99dbf33aec8247f69b24dbe61432862a")
  (smudge-oauth2-client-id "e83d0002586f450ca74b9c72ddc9a67e"))
