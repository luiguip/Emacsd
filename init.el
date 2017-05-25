(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;Configs
(load "~/.emacs.d/configs/conf.el")

;;TextEditConfig
(setq tab-always-indent 'complete)

;;Company
(use-package company
  :ensure t
  :config
  (global-company-mode))

;;projectile-mode
(use-package projectile
  :ensure t
)

;;eclim
;;(load "~/.emacs.d/configs/eclimjava.el")

;;smex
(use-package smex
  :ensure t
  :bind (("M-x" . smex)
	 ("M-X" . smex-major-mode-commands)))

;;paredit
(require 'paredit)
(add-hook 'emacs-lisp-mode-hook #'paredit-mode)
(add-hook 'ielm-mode-hook #'enable-paredit-mode) 
(add-hook 'ielm-mode-hook '(lambda () (set (make-local-variable 'company-backends) '(company-elisp))))

;;clojure-mode
(use-package clojure-mode
  :mode "\\.clj\\'"
  :config
  (add-hook 'clojure-mode-hook #'paredit-mode))

;;cider
(use-package cider
  :ensure t
  :config
  (add-hook 'cider-repl-mode-hook #'paredit-mode))

;;rainbow-mode
(use-package rainbow-mode
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-mode))

;;lisp-mode
(use-package lisp-mode
  :config
  (add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
  (add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode))

;;ielm
(use-package ielm
  :config
  (add-hook 'ielm-mode-hook #'eldoc-mode)
  (add-hook 'ielm-mode-hook #'rainbow-delimiters-mode))

;;elfeed
(setq elfeed-feeds '("http://ergoemacs.org/emacs/blog.xml"))


;;org
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;;octave-mode
(use-package octave-mode
  :mode "//.m//")
(require 'ac-octave)
(defun ac-octave-mode-setup ()
    (setq ac-sources '(ac-complete-octave)))
(add-hook 'octave-mode-hook
		            '(lambda () (ac-octave-mode-setup)))
