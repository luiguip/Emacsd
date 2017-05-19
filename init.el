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


;;projectile-mode
(use-package projectile
  :ensure t
)

;;eclim
(load "~/.emacs.d/configs/eclimjava.el")

;;smex
(use-package smex
  :ensure t
  :bind (("M-x" . smex)
	 ("M-X" . smex-major-mode-commands)))

;;paredit
(require 'paredit)
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
