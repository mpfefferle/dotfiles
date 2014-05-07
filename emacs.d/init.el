(require 'package)
(package-initialize)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)


(defvar my-packages '(
                      evil
                      js2-mode
                      ;angular-snippets
                      skewer-mode
		      surround
		      starter-kit
                      starter-kit-lisp
                      starter-kit-ruby
                      starter-kit-bindings
                      starter-kit-eshell
                      starter-kit-ruby
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
;(eval-after-load 'coffee-mode '(load-library "~/.emacs.d/setup-coffescript.el"))
(require 'setup-osx)
(eval-after-load 'ido '(require 'setup-ido))
(eval-after-load 'coffee-mode '(require 'setup-coffeescript))
(require 'setup-python)

(add-to-list 'load-path "~/share/emacs/site-lisp")
(require 'setup-auto-complete)
(require 'setup-fill-column-indicator)

(evil-mode t)
(global-surround-mode t)

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

;(add-to-list 'exec-path "/usr/local/share/npm/bin")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Clojure Mode(s)
(defun nrepl-reset ()
  (interactive)
  (set-buffer "*nrepl*")
  (goto-char (point-max))
  (insert "(user/reset)")
  (nrepl-return))

(defun nrepl-run-all-tests ()
  (interactive)
  (set-buffer "*nrepl*")
  (goto-char (point-max))
  (insert "(user/reset-and-test)")
  (nrepl-return))

(defun mbp-clojure-mode-keybindings ()
  (local-set-key (kbd "<f5>") 'nrepl-reset)
  (local-set-key (kbd "<f6>") 'nrepl-run-all-tests))

(add-hook 'clojure-mode-hook 'mbp-clojure-mode-keybindings)


(eval-after-load 'org-mode '(load "my-org-mode"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fc6e906a0e6ead5747ab2e7c5838166f7350b958d82e410257aeeb2820e8a07a" default)))
 '(js2-bounce-indent-p nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
