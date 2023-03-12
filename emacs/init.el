
;; no startup / splash message
(setq inhibit-startup-screen t)


;; packages
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


;; disabling menu and toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode t)
(ido-mode)

;; theming : 
;; inconsolata
(set-frame-font "Inconsolata-12")
;; tango-dark theme

(use-package which-key
  :init (which-key-mode)
  :diminish (which-key-mode)
  :config (setq which-key-idle-delay 1))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :config (lsp-enable-which-key-integration t)
  :init (setq lsp-keymap-prefix "C-c l"))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode))


(use-package direnv
  :config (direnv-mode))

(use-package rust-mode
  :hook (rust-mode . lsp-deferred))

(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode .lsp-deferred))

(use-package pyvenv
  :config (pyvenv-mode 1))

(use-package python-mode
  :ensure t
  :hook (python-mode . lsp-deferred))

(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :bind (:map company-active-map
	      ("<tab" . company-complete-selection))
        (:map lsp-mode-map
	      ("<tab>" . company-indent-or-complete-common))
  :custom
   (company-minimum-prefix-length 1)
   (company-idle-delay 0.0))


;; do not pollute this one with custom stuff.. 
(setq custom-file "~/.emacs-custom")
(if (file-exists-p custom-file)
    (load custom-file))
