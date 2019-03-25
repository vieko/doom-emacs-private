;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;;
;; defaults

(setq doom-theme 'doom-tomorrow-night)

(setq user-full-name "Vieko Franetovic"
      user-mail-address "vieko@pm.me")

;;
;; looks

(setq display-line-numbers-type 'relative)

(setq doom-font (font-spec :family "MesloLGLDZ Nerd Font Mono" :size 20)
      doom-variable-pitch-font (font-spec :family "MesloLGLDZ Nerd Font Mono" :size 18)
      doom-unicode-font (font-spec :family "MesloLGLDZ Nerd Font Mono" :size 18)
      doom-big-font (font-spec :family "MesloLGLDZ Nerd Font Mono" :size 26))

(font-put doom-font :weight 'semi-light)

;;
;; keybindings

(map! ;; easier window movement
      :g "C-h" 'evil-window-left
      :g "C-j" 'evil-window-down
      :g "C-k" 'evil-window-up
      :g "C-l" 'evil-window-right

      (:map evil-treemacs-state-map
        "C-h" 'evil-window-left
        "C-l" 'evil-window-right))

;;
;; interface
(require 'drag-stuff)
(drag-stuff-global-mode 1)
(drag-stuff-define-keys)

(require 'evil-snipe)
(evil-snipe-mode 1)
(evil-snipe-override-mode 1)

(define-key evil-snipe-parent-transient-map (kbd "C-;")
  (evilem-create 'evil-snipe-repeat
                 :bind ((evil-snipe-scope 'buffer)
                        (evil-snipe-enable-highlight)
                        (evil-snipe-enable-incremental-highlight))))

(add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode)

(def-package! graphql-mode
  :mode "\\.gql$")

(setq highlight-indent-guides-character ?\u00B7)

(setq python-shell-interpreter "python3" flycheck-check-python-pycompile-executable "python3")

(require 'flycheck)
(setq flycheck-check-syntax-automatically '(mode-enabled save))

(require 'flycheck-posframe)
(setq flycheck-posframe-warning-prefix "▸▸ "
      flycheck-posframe-info-prefix "~~ "
      flycheck-posframe-error-prefix "⨯⨯ ")
