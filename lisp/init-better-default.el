(require 'popwin)
(popwin-mode 1)                        ;;将光标自动移动到新打开的窗口

(tool-bar-mode -1)                     ;;关闭工具栏
(which-key-mode t)                    ;;打开which-key-mode
(scroll-bar-mode -1)                  ;;关闭滚动条

;;(global-h1-line-mode t)             ;;高亮当前行
(delete-selection-mode 1)           ;;删除和替换选中部分
(global-linum-mode t)                ;;全局开启行号
(electric-indent-mode t)             ;;回车自动缩进
(delete-selection-mode t)            ;;开启选中替换，选中删除
(global-hungry-delete-mode t)
(global-auto-revert-mode t)      ;;自动加载外部修改过的文件
;;(smex t)

(setq-default cursor-type 'bar)        ;;修改光标形状
(setq inhibit-splash-screen t)           ;;关闭启动画面
(setq make-backup-files nil)            ;;关闭自动备份
(setq auto-save-default nil)             ;;关闭文件的自动保存
(setq ring-bell-function 'ignore)      ;; Turn off sound alarms completely
(fset 'yes-or-no-p 'y-or-n-p)


	       
(require 'hungry-delete )    ;;hungry-delete 一次性删除相同字符

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)    ;;开启括号补齐


;;打开最近文件，设置快捷键 c-x c-r
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;快速打开配置文件
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;;--------------------
(global-set-key (kbd "C-x C-f") 'find-function)
(global-set-key (kbd "C-x C-v") 'find-variable)
(global-set-key (kbd "C-x C-k") 'find-function-on-key)




;;自动缩进
(defun indent-buffer()
  "Indent the currently visited buffer."
  (interactive)
 
  (indent-region (point-min) (point-max))
  )

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion)
  (if (region-active-p)
      (progn
	(indent-region (region-geginning) (region-end))
	(message "Endented selected region."))
    (progn
      (indent-buffer)
      (message "Indented buffer.")))
  )

(setq hippie-expand-try-function-list '(try-expand-debbrev
 try-expand-debbrev-all-buffers  
 try-expand-debbrev-from-kill
 try-complete-file-name-partially
 try-complete-file-name
 try-expand-all-abbrevs
 try-expand-list
 try-expand-line
 try-complete-lisp-symbol-partially
 try-complete-lisp-symbol))

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)

(fset 'yes-or-no-p 'y-or-n-p)
;;总是允许递归删除
(setq dired-recursive-deletes 'always)
(setq dired-recursive-deletes 'always)

;;打开多个dired时，共用一个buffer
(put 'dired-find-alternate-file 'disabled nil)
;;(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

(require 'dired-x)
(setq dired-dwim-target t)     ;;开启两个窗口复制文件时，自动复制到另一个窗口


;;去除dos换行符
(defun hidden-dos-eol ()
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(defun remove-dos-eol ()
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))



(provide 'init-better-default)
