(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)


(defvar my-packages '(
                      evil
                      js2-mode
                      skewer-mode
		      surround
		      starter-kit
                      starter-kit-lisp
                      starter-kit-ruby
                      starter-kit-bindings
                      starter-kit-eshell
                      clojure-mode
                      clojure-test-mode
                      nrepl
                      ggtags
                      color-theme-solarized
                      yaml-mode
                      flymake-yaml
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/share/emacs/site-lisp")
(add-to-list 'load-path "~/.emacs.d/autocomplete/")
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete//ac-dict")
(ac-config-default)

(evil-mode t)

(add-to-list 'load-path "~/.emacs.d/ac-js2")
(require 'ac-js2)

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)
(setq ac-js2-evaluate-calls t)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(linum-mode t)

; (add-to-list 'load-path "~/.emacs.d/rdebug")
; (require 'rdebug)
(load-theme 'zenburn t)

(add-hook 'yaml-mode-hook 'flymake-yaml-load)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fc6e906a0e6ead5747ab2e7c5838166f7350b958d82e410257aeeb2820e8a07a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
