(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char)

  (setq exec-path (append exec-path '("/usr/local/bin")))

  )
(provide 'setup-osx)
