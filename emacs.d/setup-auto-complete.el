(add-to-list 'load-path "~/.emacs.d/autocomplete/")
(add-to-list 'load-path "~/.emacs.d/popup")
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete//ac-dict")
(ac-config-default)

(provide 'setup-auto-complete)
