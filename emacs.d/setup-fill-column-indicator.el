(require 'fill-column-indicator)

(define-globalized-minor-mode global-fci-mode fci-mode
  (lambda () (fci-mode 1)))
(global-fci-mode t)

(provide 'setup-fill-column-indicator)
