
;; no startup / splash message
(setq inhibit-startup-screen t)

;; disabling menu and toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
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
	paredit-mode
	company
	markdown-mode
	rust-mode
	flycheck
	flycheck-rust
	racer))

(package-install-selected-packages)	

;; -- python -- 
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; -- clojure --
;; enable paredit 
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojurescript-mode-hook 'paredit-mode)
;; company mode completion for cider
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

;; flycheck
(setq flycheck-global-modes
      '(rust-mode))
(add-hook 'after-init-hook #'global-flycheck-mode)


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
 '(package-selected-packages
   (quote
    (elixir-mode flymake-rust rust-mode lua-mode org-present presentation yaml-mode paredit clojure-mode cider jedi markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
