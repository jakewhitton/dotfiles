(require 'org)
(org-babel-load-file
  (expand-file-name "settings.org"
		    user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(org-agenda-files
   (quote
	("/home/jake/org/refile.org" "/home/jake/org/school.org" "/home/jake/.dropbox/Dropbox (MIT)/org/journal/2020-05-13.org")))
 '(org-journal-date-format "%Y-%m-%d")
 '(org-journal-dir "~/org/journal")
 '(org-journal-enable-agenda-integration t)
 '(org-journal-file-format "%Y-%m-%d.org")
 '(org-journal-find-file (quote find-file))
 '(package-selected-packages
   (quote
	(company paredit geiser php-mode org-journal markdown-mode zenburn-theme spacemacs-dark scala-mode xelb exwm eyebrowse use-package spacemacs-theme solarized-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
