(require 'coffee-mode)
(require 'sourcemap)

(custom-set-variables '(coffee-tab-width 2)
                      '(coffee-args-compile '("-c" "--bare")))
(add-hook 'coffee-after-compile-hook 'sourcemap-goto-corresponding-point)
(eval-after-load "coffee-mode"
  '(progn
     (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)
     (define-key coffee-mode-map (kbd "C-j") 'coffee-newline-and-indent)))

(provide 'setup-coffeescript)

