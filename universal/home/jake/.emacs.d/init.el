;; Disable menubar
(menu-bar-mode -1)

;; Disable toolbar
(tool-bar-mode -1)

;; Disable scrollbar
(scroll-bar-mode -1)

;; MELPA
(require 'package)
(package-initialize)
(let*
  (
   (no-ssl (and
	     (memq system-type '(windows-nt ms-dos))
	     (not (gnutls-available-p))))
   (proto (if no-ssl "http" "https"))
  )
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
	  (add-to-list
	    'package-archives
	    (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))

(eval-when-compile
  (add-to-list 'load-path "/home/jake/.emacs.d/elpa")
  (require 'use-package))

;; Theme

(custom-set-variables
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces)

(add-to-list 'default-frame-alist '(font . "Inconsolata-22"))

(defun apply-theme-to-frame (frame)
    (select-frame frame)
    (load-theme 'solarized-dark))


(if (daemonp)
    (add-hook 'after-make-frame-functions 'apply-theme-to-frame)
    (apply-theme-to-frame (selected-frame)))

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
