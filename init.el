(setq inhibit-startup-screen t)
;; disabling menu and toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)

(show-paren-mode t)
(ido-mode)

;; MELPA
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;; auto-install !
(setq package-selected-packages
      '(jedi
	clojure-mode
	cider
	markdown-mode))

(package-install-selected-packages)	

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; theming : 
;; inconsolata
(set-default-font "Inconsolata-12")

;; default dark-tango theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(package-selected-packages (quote (paredit clojure-mode cider jedi markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
