;;; lisp/init-navigation.el --- Navigation -*- lexical-binding: t; -*-

(use-package avy
  :bind
  (("C-'" . avy-goto-char-2)
   ("M-g f" . avy-goto-line))
  :config
  (setq avy-timeout-seconds 0.2))

(provide 'init-navigation)

;;; lisp/init-navigation.el ends here
