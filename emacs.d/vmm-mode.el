(setq vmm-keywords '("bridge" "ipaddr"))
(setq vmm-functions '("#include" "#define" "config" "display" "vm" "hostname"
                     "basedisk" "interface"))

(setq vmm-keywords-regexp (regexp-opt vmm-keywords 'words))
(setq vmm-functions-regexp (regexp-opt vmm-functions 'words))

(setq myvmm-font-lock-keywords
      `(
        (,vmm-functions-regexp . font-lock-function-name-face)
        (,vmm-keywords-regexp . font-lock-keyword-face)
        ))

(define-derived-mode vmm-mode js2-mode
  "vmm-mode"
  ""
  (setq font-lock-defaults '((myvmm-font-lock-keywords))))

(provide 'vmm-mode)
