
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
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; auto-install !
(setq package-selected-packages
      '(jedi
	clojure-mode
	paredit-mode
	markdown-mode
	rust-mode
	cargo-mode
	lsp-mode
	lsp-ui
	direnv
	typescript-mode
	company))

(package-install-selected-packages)	

(require 'lsp-mode)

(add-hook 'prog-mode-hook 'direnv-mode)

(add-hook 'rust-mode-hook 'lsp)
(add-hook 'typescript-mode-hook 'lsp)
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


;; theming : 
;; inconsolata
(set-frame-font "Inconsolata-12")

;; default dark-tango theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(org-agenda-files '("~/Nextcloud/Documents/org/main.org"))
 '(package-selected-packages
   '(direnv typescript-mode json-mode company nix-mode elixir-mode flymake-rust rust-mode lua-mode org-present presentation yaml-mode paredit clojure-mode cider jedi markdown-mode))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
