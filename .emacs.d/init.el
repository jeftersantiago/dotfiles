;; load the settings file - whithout dependences
(when( >= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("MELPA" . "https://melpa.org/packages/") t))

(package-initialize)
`use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/README.org"))
(put 'downcase-region 'disabled nil)
