;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(setq auto-save-default t)

(setq doom-font (font-spec :family "JetBrainsMonoNerdFont" :size 15))

(windmove-default-keybindings)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq lsp-dart-sdk-dir "/home/lissa/sdk-flutter/flutter/bin/cache/dart-sdk")
(setq lsp-dart-flutter-sdk-dir "/home/lissa/sdk-flutter/flutter")
(setq lsp-dart-closing-labels-size 1)

(setq ispell-dictionary "brasileiro")

(after! org
  (setq org-directory "~/org/")
  (setq org-agenda-files '("~/org/agenda"))
  (setq org-log-done 'note)
  (setq org-enforce-todo-dependencies t)
  (setq org-agenda-current-time-string "")
  (setq org-agenda-time-grid '((daily)  () "" ""))
  (setq org-agenda-hide-tags-regexp ".*")
  (setq org-highest-priority ?A
        org-default-priority ?B
        org-lowest-priority ?D)
  (setq org-priority-faces '((?A . (:foreground "red" :weight 'bold))
                             (?B . (:foreground "yellow"))
                             (?C . (:foreground "green"))
                             (?D . (:foreground "cyan"))))
  (setq org-todo-keywords
        '((sequence
           "TODO(t!)"
           "DESENVOLVIMENTO(d@)"
           "ADIADO(a@)"
           "BLOQUEADO(b@)"
           "REVISÃO(r@)"
           "REUNIÃO(m@)"
           "|"
           "FEITO(f@)"
           "CANCELADO(c@)"
           )))
  (setq org-todo-keyword-faces
        '(("TODO" . org-warning) ("DESENVOLVIMENTO" . "yellow") ("BLOQUEADO" . (:foreground "red" :weight bold)) ("ADIADO" . (:foreground "red")) ("REVISÃO" . (:foreground "cyan")) ("REUNIÃO" . (:foreground "orange"))
          ))
  )

(use-package zoom
  :config
  (setq zoom-size '(0.618 . 0.618)
        zoom-ignored-buffer-names '(" *ctrl-p*" " *ctrl-p-results*"))
  (zoom-mode t))

(with-eval-after-load 'org (global-org-modern-mode))

(use-package olivetti
  :diminish
  :init (setq olivetti-body-width 0.62))


(defun org-agenda-open-hook () (olivetti-mode))

(add-hook 'org-agenda-mode-hook 'org-agenda-open-hook)

(use-package evil-goggles
  :ensure t
  :config
  (evil-goggles-mode)
  (evil-goggles-use-diff-faces))

(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("<f5>" . centaur-tabs-backward)
  ("<f6>" . centaur-tabs-forward))
