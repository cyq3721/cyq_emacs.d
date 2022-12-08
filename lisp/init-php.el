;;; package --- summary
;;; commentary:
                                        ;设置web浏览器为emacs内部的eww
;;;code:
 (setq browse-url-browser-function 'eww-browse-url)
 (exec-path-from-shell-initialize)

;;(require 'flymake-php)
;;(add-hook 'php-mode-hook 'flymake-php-load)

;;加载flycheck
;;;code:
 (use-package flycheck
  :diminish flycheck-mode
  :hook (after-init . global-flycheck-mode)
  :custom
    (flycheck-php-executable "/path/to/php")
    )
(provide 'init-php)
