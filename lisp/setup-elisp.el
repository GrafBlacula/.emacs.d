

(defun eval-region-or-buffer ()
  "evaluates buffer or region when active"
  (interactive)
  (let ((debug-on-error t))
    (cond
     (mark-active
      (call-interactively 'eval-region)
      (message "Region evaluated!")
      (setq deactivate-mark t))
     (t
      (eval-buffer)
      (message "Buffer evaluated!")))))

(defun elisp-options ()
  "personal elisp mode hook options"
  (local-set-key (kbd "C-x E") 'eval-region-or-buffer))

(add-hook 'emacs-lisp-mode-hook 'elisp-options)

(provide 'setup-elisp)
