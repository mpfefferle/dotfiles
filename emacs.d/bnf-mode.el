(setq my-bnf-font-lock-keywords
      '(
        ("^#.*" . 'font-lock-comment-face) ;; comments at start
        ;; of line
        ("^<[^ \t\n]*?>" . 'font-lock-function-name-face) ;; LHS nonterminals
        ("<[^ \t\n]*?>" . 'font-lock-builtin-face) ;; other
        ;; nonterminals
        ("::=" . 'font-lock-const-face) ;; "goes-to" symbol
        ("\|" . 'font-lock-warning-face) ;; "OR" symbol
        ))
(define-derived-mode bnf-mode fundamental-mode
  (setq font-lock-defaults '(my-bnf-font-lock-keywords))
  (setq mode-name "bnf mode")
  )

(provide 'bnf-mode)
