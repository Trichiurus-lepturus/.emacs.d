;;; lisp/init-dashboard.el --- Dashboard -*- lexical-binding: t -*-

(require 'cl-lib)

(use-package recentf
  :ensure nil
  :init (recentf-mode 1))

(use-package dashboard
  :defer t
  :init
  (setq dashboard-projects-backend 'project-el)
  (add-hook 'dashboard-before-initialize-hook #'recentf-mode)

  (defun sztk-dashboard-choose-banner ()
    (let ((banner-dir (expand-file-name "banners/"
                                        user-emacs-directory))
          (banner-file (cond
                        ((and (display-graphic-p)
                              (image-type-available-p 'png))
                         "emacs-china.png")
                        ((>= (window-width) 80) "ascii-art.txt")
                        (t "alt-ascii-art.txt"))))
      (setq dashboard-startup-banner
            (expand-file-name banner-file banner-dir))))
  (add-hook 'dashboard-before-initialize-hook
            #'sztk-dashboard-choose-banner)

  (dashboard-setup-startup-hook)
  :config
  (setq dashboard-center-content t
        dashboard-show-shortcuts t
        dashboard-items '((projects . 6)
                          (recents  . 6))
        dashboard-footer-messages '("Esc - Meta - Alt - Ctrl - Shift"))

(provide 'init-dashboard)

;;; lisp/init-dashboard.el ends here
