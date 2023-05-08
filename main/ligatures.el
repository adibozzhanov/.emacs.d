(use-package ligature
  :load-path "path-to-ligature-repo"
  :config
  (ligature-set-ligatures 'prog-mode '(("-" (rx (+ "-")))
                                       ("-" (rx (* "-") ">"))
                                       ("+" (rx (+ "+")))
                                       ("<" (rx (+ "=")))
                                       ("<" (rx (+ "=") ">"))
                                       ("<" (rx (+ "~")))
                                       ("<" (rx (+ "~") ">"))
                                       ("<" (rx "!" (+ "-")))
                                       ("<" (rx (+ "-")))
                                       ("<" (rx (+ "-") ">"))
                                       ("<" (rx "|"))
                                       (">" (rx (+ "=")))
                                       (">" (rx ">" (+ "=")))
                                       (">" (rx ">" (+ "=") ">"))
                                       (">" (rx (+ "-")))
                                       (">" (rx (+ "-") "<"))
                                       ("~" (rx (+ "~")))
                                       ("~" (rx (+ "~") ">"))
                                       ("=" (rx (+ "=")))
                                       "!="
                                       "!=="
                                       "[|"
                                       "|]"
                                       "{|"
                                       "|}"
                                       "|>"
                                       ))
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))
