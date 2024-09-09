(require 'mmm-mode)
(require 'css-mode)
(require 'php-mode)

(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'html-mode "\\.php'" 'php-mode)

(provide 'init-mmm)
