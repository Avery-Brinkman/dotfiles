(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p "~/.emacs.d/custom.el")
  (write-region "" nil "~/.emacs.d/custom.el"))
(load custom-file)

(use-package gruvbox-theme
  :ensure t)
(load-theme 'gruvbox t)
(use-package magit
  :ensure t)
(use-package smex
  :ensure t
  :config (smex-initialize)
)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(use-package evil
  :ensure t)
(evil-mode 1)

(tool-bar-mode -1)
(setq inhibit-startup-screen t)

(column-number-mode 1)
(global-display-line-numbers-mode)
(display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(ido-mode 1)
(ido-everywhere 1)
