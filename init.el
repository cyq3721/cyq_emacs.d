(add-to-list 'load-path "~/.emacs.d/lisp/")
;;(load-file "~/.emacs.d/lisp/")

(require 'init-packages)
(require 'init-org)
(require 'init-better-default)
(require 'init-neotree)
(require 'init-ivy)
(require 'init-smartparens)
(require 'init-indent-region)
(require 'init-web)
(require 'init-company)
(require 'init-python)
;;------------------------------------------------------
(require 'all-the-icons)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("d9646b131c4aa37f01f909fbdd5a9099389518eb68f25277ed19ba99adeb7279" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
