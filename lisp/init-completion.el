;;; lisp/init-completion.el --- Completion -*- lexical-binding: t; -*-

(electric-pair-mode 1)
(context-menu-mode 1)
(setq tab-always-indent 'complete
      text-mode-ispell-word-completion nil
      enable-recursive-minibuffers t
      minibuffer-prompt-properties
      '(read-only t cursor-intangible t face minibuffer-prompt)
      read-extended-command-predicate
      #'command-completion-default-include-p)

(use-package vertico
  :init
  (vertico-mode 1))

(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  (corfu-preselect 'prompt)
  (corfu-auto-delay 0.1)
  (corfu-quit-at-boundary 'separator)
  (corfu-quit-no-match t)
  (corfu-preview-current nil)
  :bind
  (:map corfu-map
        ("C-SPC" . corfu-insert-separator)
        ("C-@" . corfu-insert-separator))
  :init
  (global-corfu-mode 1)

(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides
   '((file (styles partial-completion))))
  (completion-category-defaults nil))

(provide 'init-completion)

;;; lisp/init-completion.el ends here
