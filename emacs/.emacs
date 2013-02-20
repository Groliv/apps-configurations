;;
;; .myemacs for emacs in ~/
;;
;; Made by jocelyn girard
;; Login   <jocelyn@erioxyde.com>
;;
;; Started on  Wed May 30 14:52:51 2007 jocelyn girard
;; Last update Wed Feb 13 12:15:16 2013 Jocelyn GIRARD
;;

;; ----------------------------- Systems -----------------------------

;; Pas de logo emacs au demarrage
(setq inhibit-startup-message t)

;; Insertion automatique dans les nouveaux fichiers
(add-hook 'find-file-hooks 'auto-insert)
(load-library "autoinsert")
(setq auto-insert-directory "~/.emacs.d/models/")

;; LoadPath
(setq load-path (cons "~/.emacs.d/" load-path))
;;(progn (cd "~/.emacs.d") (normal-top-level-add-subdirs-to-load-path))

;; System encoding
;(require 'ucs-tables)
;(unify-8859-on-encoding-mode 1)
;(unify-8859-on-decoding-mode 1)
;(set-terminal-coding-system 'latin-1)
;(set-keyboard-coding-system 'latin-1)

;; User Info
(setq user-full-name "Jocelyn GIRARD")
(setq user-mail-address "jocelyn@erioxyde.com")
(setq column-number-mode 1)

;; Make all backups in a single directory
(setq backup-directory-alist `(("." . ,(expand-file-name "/tmp/emacsbackups"))))

;; Tronc line
(add-hook 'find-file-hooks '(lambda () (toggle-truncate-lines)))

;; On peut repondre y/n au lieu de yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; force Meta ALT
;;(setq meta-keysym 'alt
;;      alt-keysym  'meta)

;; Load CEDET (ECB)
;(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")

;; -------------------------- Keys Binding ---------------------------

;; Epita header
(global-set-key [f11] 'std-file-header)

;; Auto-fill 80 columns
(global-set-key [f8] 'auto-fill-mode)

;; Prev/Next buffer
(global-set-key [f5] 'previous-user-buffer)
(global-set-key [f6] 'next-user-buffer)

;; END : fin de ligne
(global-set-key [end] 'end-of-line)

;; HOME : debut de ligne
(global-set-key [home] 'beginning-of-line)

;; Flymake next-err
;(global-set-key [f4] 'flymake-goto-next-error)

;; ---------------------------- Normes -------------------------------

;; Epita header
(load-file "~/.emacs.d/std_comment.el")

;; 80 columns
(add-hook 'text-mode-hook
          '(lambda () (setq fill-column 80)))

;; Two space after colon
(setq colon-double-space t)

;; On va automatiquement a la ligne quand on tape un ; ou une accolade
;; (setq c-auto-newline t)

;; Delete spaces until the End of Line
(add-hook `write-file-hooks `delete-trailing-whitespace)

;; Show parentheses matching
(show-paren-mode t)

;; Activate Highlight syntyaxing
(if (functionp 'global-hi-lock-mode)
    (global-hi-lock-mode 1)
  (hi-lock-mode 1))
; (global-font-lock-mode)
(setq font-lock-maximum-decoration t)
(setq font-lock-maximum-size nil)

;; Flymake
;(add-hook 'c-mode-common-hook
;          (function (lambda ()
;                      (flymake-mode t)
;                      )))
;
;(require 'flymake-php)

;; ------------------------ System Color -----------------------------

;(custom-set-faces
 '(cursor ((t (:background "turquoise" :inverse-video t))))
; '(flymake-errline ((((class color)) (:underline "Red"))))
; '(flymake-warnline ((((class color)) (:underline "Orange" ))))
; '(mode-line ((((class color) (min-colors 88)) (:background "grey" :foreground "black" :height 0.8)))))

;; ------------------------ Syntax Color -----------------------------

;; Syntax Color
(global-font-lock-mode 1)

;; PHP mode
(load-file "~/.emacs.d/php-mode.el")
(autoload 'php-mode "php-mode" "PHP editing mode" t)
(add-to-list 'auto-mode-alist '(".php$" . php-mode))
(add-to-list 'auto-mode-alist '(".php3$" . php-mode))
(add-to-list 'auto-mode-alist '(".php4$" . php-mode))
(add-to-list 'auto-mode-alist '(".php5$" . php-mode))
(add-to-list 'auto-mode-alist '(".inc$" . php-mode))

;; HTML::Mason
(add-to-list 'auto-mode-alist '(".mas$" . html-mode))

;; CSS mode
(autoload 'css-mode "css-mode")
(setq auto-mode-alist
      (cons '("\\.css\\'" . css-mode) auto-mode-alist))

;; LaTeX
;(require 'tex-site)

;; .awesomerc
(add-to-list 'auto-mode-alist '("^\.awesomerc$" . shell-script-mode))

;; --------------------------- Tools ---------------------------------

;; Time
(display-time)
(setq display-time-24hr-format t)

;; Tab color
(highlight-regexp "	" 'hi-blue)

;; View space alone
(setq-default show-trailing-whitespace t)

;; Delete space w/ saving
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

;; Code foding
(add-hook 'c-mode-common-hook
            (lambda () (hs-minor-mode 1)))
(add-hook 'hs-minor-mode-hook
            (lambda () (local-set-key "\C-cs" 'hs-show-block)))
(add-hook 'hs-minor-mode-hook
            (lambda () (local-set-key "\C-ch" 'hs-hide-block)))
(add-hook 'hs-minor-mode-hook
            (lambda () (local-set-key "\C-cS" 'hs-show-all)))
(add-hook 'hs-minor-mode-hook
            (lambda () (local-set-key "\C-cH" 'hs-hide-all))) (load "~/.emacs.d/wb-line-number.el")

;; Line number
(load "~/.emacs.d/setnu.el")
(wb-line-number-toggle)

;; Color-Theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

;; Highlight current line
(global-hl-line-mode 1)

;; --------------------------- Insertions ----------------------------

;; Makefile
(setq auto-insert-alist (append '((makefile-mode . "Makefile-insert")) auto-insert-alist))

;; LaTeX file (article, a4paper, 11pt)
(setq auto-insert-alist (append '((latex-mode . "Latex-insert")) auto-insert-alist))

;; --------------------------- Emacs GTK -----------------------------

(if window-system
    (progn

      ;; GTK Font Emacs
      (set-default-font "-xos4-terminus-medium-r-normal-*-12-*-*-*-*-*-*-*" )

      ;; No line number
      (wb-line-number-toggle)

      ;; Mode Curseur
      (setq mouse-yank-at-point t)
      (setq mouse-yank-at-click nil)

      ;; No toolbar de merde & GTK
      (tool-bar-mode -1)
      (scroll-bar-mode -1)
      (menu-bar-mode -1)
      (setq use-file-dialog nil)

      ;; ECB
;;       (require 'ecb)
;;       (custom-set-variables
;;        '(ecb-compile-window-width (quote edit-window))
;;        '(ecb-layout-name "left3")
;;        '(ecb-options-version "2.32")
;;        '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
;;        '(ecb-tip-of-the-day nil)
;;        '(ecb-tree-buffer-style (quote image)))
;;       (if (not (eq window-system nil))
;; 	  (ecb-activate))
;;       (defun ecb-off ()
;; 	(interactive)
;; 	()
;; 	(ecb-deactivate)
;; ;;	(set-screen-width 80)
;; 	)
;;       (defun ecb-on ()
;; 	(interactive)
;; 	()
;; ;;	(set-screen-width 80)
;; 	(ecb-activate))
      )
  )

;; ------------------------------ End --------------------------------
