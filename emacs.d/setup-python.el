(setq py-install-directory "~/src/launchpad/python-mode")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)
(require 'ein)

;; (autoload 'python-mode "python-mode" "Python Mode." t)
;; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; (add-to-list 'interpreter-mode-alist '("python" . python-mode))

(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
(setq py-python-command-args
      '("--pylab=qt"))
(setq py-force-py-shell-name-p t)

(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
(setq py-split-windows-on-execute-p nil)
(setq py-smart-indentation t)

(provide 'setup-python)
