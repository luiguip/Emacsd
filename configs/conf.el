;;Configs
;;Details
(column-number-mode t)
(global-linum-mode t)
;;display date and time
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)
;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)
;;UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;;disable welcome screen
(setq inhibit-startup-message t)
;;save session
(desktop-save-mode t)
;;start emacs server
(server-start)
;;tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
