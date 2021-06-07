(require 'org)
(setq org-src-fontify-natively t)      ;;org-mode引用代码时实现语法高亮
(add-hook 'org-mode-hook   
	  (lambda () (setq truncate-lines nil)))  ;;自动换行
(setq org-agenda-files '("/org"))
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-startup-indented t)  ;;开启自动缩进
(provide 'init-org)
