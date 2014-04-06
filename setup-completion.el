
(require 'auto-complete)
(require 'auto-complete-config)
;;(ac-config-default)
(setq ac-use-menu-map t)

(setq ac-dwim t)
;; Default settings
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

;; allow <return> to complete
(define-key ac-completing-map "\C-m" nil)
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-m" 'ac-complete)

;; (ac-set-trigger-key "<return>")
(global-set-key (kbd "C-<return>") 'auto-complete)

(setq ac-sources '(ac-source-filename
                   ac-source-yasnippet
                   ac-source-abbrev
                   ac-source-dictionary
                   ac-source-words-in-same-mode-buffers))

(global-auto-complete-mode t)

;; (global-set-key (kbd "<return>") 'newline-and-indent)

;; (require 'irony-conf)

(provide 'setup-completion)
