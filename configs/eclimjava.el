;;eclim
(require 'eclim)
(require 'eclimd)
(global-eclim-mode)
(custom-set-variables
 '(eclim-eclipse-dirs '("/home/luigui/eclipse"))
 '(eclim-executable "/home/luigui/eclipse/eclim"))

;;Displaying compilation error messages in the echo area
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)
;;Configuring auto-complete-mode Eclim
;;regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)
;;add emacs eclim source
(require 'ac-emacs-eclim)
(ac-emacs-eclim-config)
;;company-mode
;;regular company mode
(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)
(put 'downcase-region 'disabled nil)
