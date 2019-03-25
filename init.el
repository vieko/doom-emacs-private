;;; ~/.doom.d/init.el -*- lexical-binding: t; -*-

(doom! :feature
       eval
       (evil +everywhere)
       (lookup +docsets)
       workspaces

       :completion
       (company
        ;; +auto
        +childframe
        )
       (ivy +fuzzy)

       :ui
       deft
       doom
       ;; doom-dashboard
       doom-quit
       evil-goggles
       ;; indent-guides
       hl-todo
       modeline
       nav-flash
       treemacs
       (popup
        +all
        +defaults)
       vc-gutter
       ;; vi-tilde-fringe
       window-select

       :editor
       fold
       (format +onsave)
       multiple-cursors
       rotate-text

       :emacs
       dired
       electric
       imenu
       vc

       :tools
       editorconfig
       (flycheck +childframe)
       magit
       ;;tmux
       vterm

       :lang
       data
       emacs-lisp
       javascript
       markdown
       (org
        +attach
        +babel
        +capture
        +export
        +present)
       (python
         +pyenv
         +pyvenv)
       (sh +fish)
       web

       :app
       ;;irc
       ;;(rss +org)

       :collab
       ;;impatient-mode

       :config
       ;;literate

       (default +bindings +smartparens))
