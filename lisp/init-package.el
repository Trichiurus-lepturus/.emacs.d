;;; lisp/init-package.el --- Package management via Elpaca -*- lexical-binding: t; -*-

(require 'init-const)
(require 'init-elpaca)

(when windows-p
  (elpaca-no-symlink-mode))

(elpaca elpaca-use-package
  (elpaca-use-package-mode))

(setq use-package-always-ensure t)
(setq use-package-always-defer t)

(provide 'init-package)

;;; lisp/init-package.el ends here
