(require 'mmm-mode)
(require 'css-mode)

(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'html-mode "\\.css'" 'html-css)

(provide 'init-mmm)
